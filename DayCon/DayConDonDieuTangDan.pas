program DayConDonDieuTangDan;
uses crt;
type mang = array[1..100] of integer;


var
        a,b:mang;
        i,j,n,max,jmax:integer;

BEGIN
        clrscr;

        write('Nhap n:');readln(n);


        for i:=1 to n do
        begin
               write('Nhap a[',i,']=');readln(a[i]);
        end;

        writeln;

        //Co so quy hoach dong
        b[1]:=1;

        //Tim max
        for i:=2 to n do
        begin
                max:=0;

                for j:=1 to i-1 do

                        if(a[i] > a[j]) then
                        if(b[j] > max) then
                                max:=b[j];

                b[i]:=max+1;

        end;

        max:=0;

        for i:=1 to n do
        if(max < b[i]) then max:=b[i];

        writeln('Do dai trong xau la:', max);



        readln
END.

