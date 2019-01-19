program DayConCoTongLonNhat;
uses crt;
type mang = array[1..100] of integer;
var a:mang;
    i,n,j,max:integer;

function Tong(a:mang;l,r:integer):Integer;
BEGIN
        Tong:=0;
        for i:=l to r do inc(Tong,a[i]);

END;

BEGIN
        clrscr;

        readln(n);

        for i:=1 to n do
        begin
                write('Nhap a[',i,']');readln(a[i]);

        end;



        for i:=1 to n do
                for j:=i to n do
                if(Tong(a,i,j)) > max then
                        max:=Tong(a,i,j);
        write(max);


        readln
END.
