program Fibonacy;

uses crt;
var
        a:array [1..100] of integer;
        n,i:integer;

function So(n:integer):integer;
var
        dem:integer;
BEGIN
        dem:=1;
        while n > 0 do
        begin
                n:=n div 10;
                inc(dem);

        end;

        So:=dem;

END;

BEGIN
        clrscr;

        write('Nhap n:');readln(n);

        a[1]:=1; a[2]:=1;

        write(a[1]:3,a[2]:3);
        for i:=3 to n do
        begin
                a[i]:=a[i-1]+a[i-2];
                write(a[i]:So(a[i]));
        end;



        readln
END.
