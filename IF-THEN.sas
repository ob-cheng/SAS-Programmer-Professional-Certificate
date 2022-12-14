***********************************************************;
*  LESSON 4, PRACTICE 7                                   *;
*    a) Submit the program and view the generated output. *;
*    b) In the DATA step, use IF-THEN/ELSE statements to  *;
*       create a new column, ParkType, based on the value *;
*       of Type.                                          *;
*       NM -> Monument                                    *;
*       NP -> Park                                        *;
*       NPRE, PRE, or PRESERVE -> Preserve                *;
*       NS -> Seashore                                    *;
*       RVR or RIVERWAYS -> River                         *;
*    c) Modify the PROC FREQ step to generate a frequency *;
*       report for ParkType.                              *;
***********************************************************;

data park_type;
	set pg1.np_summary;
	*Add IF-THEN-ELSE statements;
	if type="NM" then ParkType="Monument";
	if type="NP" then ParkType="Park";
	if type="NPRE" or type="PRE" or type="PRESERVE" then ParkType="Preserve";
	if type="NS" then ParkType="Seashore";
	if type="RVR" or type="RIVERWAYS" then ParkType="River";
run;

proc freq data=park_type;
	tables Type;
run;
