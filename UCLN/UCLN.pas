program UCLN;

uses crt;
var
        a,b:integer;
function UCLN(a,b:integer):integer;
BEGIN
        while (a <> b) do
        if (a>b) then a:=a-b else b:=b-a;
        UCLN:=b;

END;

BEGIN
        clrscr;

        write('Nhap a va b:');readln(a,b);
        write('UCLN cua ', a,' va ',b,' la ',UCLN(a,b));

        readln
END.

