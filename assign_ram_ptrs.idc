
#include <idc.idc>

static main(void)
{
	auto opIdx = 0;
	
	auto currentSeg = FindCode(FirstSeg(), SEARCH_DOWN);
	while (currentSeg != BADADDR)
	{
		auto opStr = GetOpnd(currentSeg, opIdx);
		auto opType = GetOpType(currentSeg, opIdx);
		auto opValue = GetOperandValue (currentSeg, opIdx);
		if ((opType == 2 || opType == 3 || opType == 4)
			&& opValue >= 0 && opValue <= 0x8000)
		{
			OpOff(currentSeg, opIdx, 0);
			
			Message("Seg: %08x, OpVal: %04x, OpStr: %s, OpType: %04x\n", currentSeg, opValue, opStr, opType);
		}
		
		currentSeg = FindCode(currentSeg, SEARCH_DOWN);
	}
}