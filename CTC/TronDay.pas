program TronDaySo;

uses crt;
type mang = array[1..100] of integer;
var
        a,b,c:mang;
        i,n,j:integer;
function SoChuSo(n:integer):integer;
var
        dem:integer;
BEGIN
        dem:=1;
        while (n>0) do
        begin
                n:=n div 10;
                inc(dem);


        end;

        SoChuSo:=dem;

END;
procedure NhapDay(var a,b:mang; n:byte);
BEGIN
                writeln('Nhap day so a:');

                for i:=1 to n do
                begin
                        write('Nhap phan tu a[',i,']=');readln(a[i]);

                end;

                writeln;

                writeln('Nhap day so b:');

                for i:=1 to n do
                begin
                        write('Nhap phan tu b[',i,']=');readln(b[i]);

                end;
                writeln;

END;

procedure TronDay(a,b:mang ; var c:mang;n:integer);
var
        i,j:integer;
BEGIN
        i:=1;  j:=1;

        repeat
                c[i]:=a[j];
                c[i+1]:=b[j];
                i:=i+2;
                j:=j+1;



        until j > n ;





END;

BEGIN
        clrscr;
        write('Nhap n:');readln(n);

        NhapDay(a,b,n);
        TronDay(a,b,c,n);

        for i:=1 to n*2 do
        write(c[i]:SoChuSo(c[i]));


        readln
END.

