program SoLonNhi;

uses crt;
var
        a:array[1..100] of integer;
        n,i,max,nhi:integer;

BEGIN
        clrscr;

        write('Nhap n:');readln(n);
        writeln('Day so la:');
        randomize;
        for i:=1 to n do
        begin
                a[i]:=random(100);
                write(a[i]:3);
        end;

        writeln;
        //Xac dinh max va nhi
        if( a[1] > a[2]) then
        begin
                max:=a[1];
                nhi:=a[2];
        end
        else
        begin
                max:=a[2];
                nhi:=a[1];

        end;

        for i:=3 to n do
        begin
                 if(a[i] > max) then
                 begin
                        nhi:=max;
                        max:=a[i];

                 end;

                 if(nhi < a[i]) and (a[i] < max) then
                 begin
                        nhi:=a[i];


                 end;

        end;

        writeln('So lon nhat la:', max);
        writeln('So lon nhi la:', nhi);


        readln
END.

