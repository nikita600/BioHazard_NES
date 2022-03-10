// BioHazardToolkit_NES.cpp : Этот файл содержит функцию "main". Здесь начинается и заканчивается выполнение программы.
//

#include <iostream>
#include <fstream>
#include <vector>

using namespace std;

const char* fileName = "Bio Hazard (Unl) [!].nes";
const int banksCount = 0x14;
const int tilemapSize = 0x400;

char* read_rom_header(ifstream& romStream)
{
    char* header = new char[0x10];
    romStream.read(header, 0x10);

    return header;
}

vector<char*> read_rom_banks(ifstream& romStream)
{
    auto bankSize = 1 << 15;
    vector<char*> banks{};
    for (int i = 0; i < banksCount; ++i)
    {
        char* bank = new char[bankSize];
        romStream.read(bank, bankSize);

        banks.push_back(bank);
    }

    return banks;
}

vector<char> compress_tilemap(vector<char> tilemap)
{
    vector<char> compressed{};

    int offset = 0;
    while (offset < tilemapSize)
    {
        char first = tilemap[offset];
        offset++;

        if (offset >= tilemapSize)
        {
            compressed.push_back(1);
            compressed.push_back(first);

            return compressed;
        }

        char second = tilemap[offset];
        offset++;

        if (first == second)
        {
            int controlIdx = compressed.size();

            int size = 2;
            compressed.push_back(0x80);
            compressed.push_back(first);

            while (offset < tilemapSize)
            {
                if (size >= 0x7F)
                {
                    break;
                }

                char current = tilemap[offset];
                if (first == current)
                {
                    size++;
                }
                else
                {
                    break;
                }

                offset++;
            }

            compressed[controlIdx] = size | 0x80;
        }
        else
        {
            int controlIdx = compressed.size();
            compressed.push_back(0x00);

            int size = 2;
            compressed.push_back(first);
            compressed.push_back(second);

            while (offset < tilemapSize)
            {
                if (size >= 0x7F)
                {
                    break;
                }

                second = first;
                first = tilemap[offset];

                if (first == second)
                {
                    break;
                }
                else
                {
                    compressed.push_back(first);
                    size++;
                }

                offset++;
            }

            compressed[controlIdx] = size;
        }
    }

    return compressed;
}

vector<char> decompress_tilemap(vector<char> compressed)
{
    vector<char> decompressed{};

    int offset = 0;
    int compSize = compressed.size();
    while (offset < compressed.size())
    {
        if (offset >= compSize)
        {
            return decompressed;
        }

        unsigned char control = compressed[offset];
        offset++;

        if (control > 0x80)
        {
            if (offset >= compSize)
            {
                return decompressed;
            }

            char size = control & 0x7F;
            char data = compressed[offset];
            offset++;
            for (int i = 0; i < size; ++i)
            {
                decompressed.push_back(data);
            }
        }
        else
        {
            char size = control;
            for (int i = 0; i < size; ++i)
            {
                if (offset >= compSize)
                {
                    return decompressed;
                }

                char data = compressed[offset];
                offset++;

                decompressed.push_back(data);
            }
        }
    }

    return decompressed;
}

bool compare_tilemaps(vector<char> lhs, vector<char> rhs)
{
    if (lhs.size() != rhs.size())
    {
        return false;
    }

    for (int i = 0; i < tilemapSize; ++i)
    {
        if (lhs[i] != rhs[i])
        {
            return false;
        }
    }

    return true;
}

int main()
{
    cout << "BioHazard NES Toolkit by nikita600, 09/03/2022\n";

    ifstream romStream;
    romStream.open(fileName, ios::in | ios::binary);
    if (romStream.is_open())
    {
        char* header = read_rom_header(romStream);
        vector<char*> banks = read_rom_banks(romStream);
        
        int offset = 0;
        int beforeSize = 0;
        int afterSize = 0;
        int totalBefore = 0;
        int totalAfter = 0;
        vector<int> tilemapPtrs{};

        for (int i = 0; i < banksCount; ++i)
        {
            char* bank = banks[i];

            switch (i)
            {
            case 0x07:
            case 0x08:
            case 0x09:
            case 0x0A:
            case 0x0B:
            case 0x0C:
            case 0x0D:
            case 0x0E:
            case 0x0F:
            case 0x10:
            case 0x11:

                cout << "Processing bank: " << std::hex << i << "\n";

                beforeSize = 0;
                afterSize = 0;

                // TileMaps
                offset = 0x5B;//0x805B;
                for (int t = 0; t < 30; ++t)
                {
                    unsigned int ptr = 0;
                    memcpy(&ptr, &bank[offset], 2);

                    if (ptr < 0x8000)
                    {
                        break;
                    }

                    vector<char> tilemap{};
                    for (int x = 0; x < tilemapSize; ++x)
                    {
                        char data = bank[ptr - 0x8000 + x];
                        tilemap.push_back(data);
                    }
                    beforeSize += tilemapSize;

                    vector<char> compressed = compress_tilemap(tilemap);
                    vector<char> decompressed = decompress_tilemap(compressed);
                    afterSize += (int)compressed.size();

                    if (!compare_tilemaps(tilemap, decompressed))
                    {
                        cout << "FAIL";
                    }
                    else
                    {
                        cout << std::hex << "Ptr: 0x" << ptr << ", CompSize: 0x" << std::hex << compressed.size() << ", DecompSize: 0x" << std::hex << decompressed.size() << "\n";
                    }

                    offset += 2;
                }

                cout << std::dec << "BEFORE: " << beforeSize << ", AFTER: " << afterSize << "\n";

                totalBefore += beforeSize;
                totalAfter += afterSize;

                break;

            default:
                break;
            }
        }

        cout << std::dec << "TOTAL_BEFORE: " << totalBefore << ", TOTAL_AFTER: " << totalAfter << "\n";

        romStream.close();
    }

    cout << "Finished!\n";
    system("pause");
}

