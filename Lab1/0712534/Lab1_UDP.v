primitive Lab1_UDP(F,A,InvertB,C,InvertD);

	output F;
	input A,InvertB,C,InvertD;

	table

//	A  B' C  D': F;
	0  0  0  0 : 0;
	0  0  0  1 : 0;
	0  0  1  0 : 0;
	0  0  1  1 : 0;
	0  1  0  0 : 0;
	0  1  0  1 : 0;
	0  1  1  0 : 1;
	0  1  1  1 : 1;
	1  0  0  0 : 0;
	1  0  0  1 : 1;
	1  0  1  0 : 0;
	1  0  1  1 : 1;
	1  1  0  0 : 0;
	1  1  0  1 : 1;
	1  1  1  0 : 1;
	1  1  1  1 : 1;

	endtable

endprimitive
