program SNT;

uses crt;
var
        n,i:integer;
        a:array[1..100] of integer;

function KT(n:integer):boolean;
var
        i:integer;
BEGIN
        KT:=false;
        if n < 2 then exit else

        for i:=2 to trunc(sqrt(n)) do
        if (n mod i = 0) then exit;

        KT:=true;



END;
BEGIN
        clrscr;

        write('Nhap n:');readln(n);
        for i:=1 to n do
        begin
                a[i]:=random(100);
                write(a[i]:3);
        end;


        writeln;
        writeln('Cac so nguyen to la:');
        for i:=1 to n do
        if (KT(a[i])) then write(a[i]:4);

        readln
END.

