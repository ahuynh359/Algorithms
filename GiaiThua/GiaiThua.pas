program GiaiThua;
uses crt;
var
        n:integer;
function GiaiThua(n:integer):integer;
BEGIN

        if(n = 0) then GiaiTHua:=1 else
        GiaiTHua:=n*GiaiThua(n-1);

END;
BEGIN
        clrscr;
        write('Nhap n:');readln(n);

        write(n,'!=',GiaiTHua(n));

        readln

END.
