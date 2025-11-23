program main;
uses unit1;
procedure test(InputPriceWithNDS: double; ProcNDS: TProcNDS);
var
	CorrectedPriceWithNDS, CorrectedPriceWithoutNDS: double;
begin
	CalcPrices(InputPriceWithNDS, ProcNDS, CorrectedPriceWithNDS, CorrectedPriceWithoutNDS);
        writeln(output, 'CorrectedPriceWithNDS := ', CorrectedPriceWithNDS:0:2, #9, 'CorrectedPriceWithoutNDS := ', CorrectedPriceWithoutNDS:0:2);	
end;
begin
	{$T+}
	{$I-}
	test(1.81, 20);
	test(1.81, 18);
	test(1.21, 15);
	test(1.91, 19);
end.
