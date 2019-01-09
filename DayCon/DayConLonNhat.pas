program DayConLonNhat;

uses crt;
var
        a:array[1..1000] of integer;
        i,n,max,dem,j,cuoi,dau:integer;


BEGIN
        clrscr;

        write('Nhap n:');readln(n);

        for i:=1 to n do
        begin
                write('Nhap a[',i,']=');readln(a[i]);

        end;

        max:=1; dem:=1;

        a[n+1]:=a[n]-1; //Chac chan max se duoc gan

        for i:=2 to n+1 do

        if a[i-1] < a[i] then inc(dem) else

        if (dem > max) then
                begin
                        max:=dem;
                        cuoi:=i-1;
                        dem:=1;
                end;

         writeln('So phan tu day con lon nhat:',max);


        for i:=abs(max-cuoi)+1 to cuoi do write(a[i]:3);


        readln
END.

