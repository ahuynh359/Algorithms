program TamGiacPascal;
uses crt;
var
        a:array [1..100,1..100] of integer;
        i,j,n:integer;
BEGIN
        clrscr;

        write('Nhap n:');readln(n);

        a[1,1]:=1;
        a[2,2]:=1;

        for i:=1 to n do
        begin
                a[i,1]:=1;
                a[i,i]:=1;

                for j:=2 to i-1 do a[i,j]:=a[i-1,j-1]+a[i-1,j];

        end;

        for i:=1 to n do
        begin
                for j:=1 to i do write(a[i,j]);
                writeln;
        end;

        readln

END.



































