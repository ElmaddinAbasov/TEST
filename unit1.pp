unit unit1;
interface
type
	TProcNDS = 0..99;
procedure CalcPrices(InputPriceWithNDS: double; ProcNDS: TProcNDS; var CorrectedPriceWithNDS, CorrectedPriceWithoutNDS: double);
implementation
procedure CalcPrices(InputPriceWithNDS: double; ProcNDS: TProcNDS; var CorrectedPriceWithNDS, CorrectedPriceWithoutNDS: double);
begin
	CorrectedPriceWithoutNDS := InputPriceWithNDS / (1 + ProcNDS / 100);
	CorrectedPriceWithNDS := (Round(CorrectedPriceWithoutNDS * 10) / 10) * (1 + ProcNDS / 100);
end;
end.
