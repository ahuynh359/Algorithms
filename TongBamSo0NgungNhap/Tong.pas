program Tong;
uses crt;
var
        n,nhap,t,i:integer;
BEGIN
        clrscr;
        t:=0;

        repeat

                write('Nhap vao mot so:');readln(n);
                t:=t+n;
                inc(i);
                writeln('Tong thu ',i,' la ', t);
                writeln('Nhap so 0 de ket thuc');
                writeln;

        until  n = 0;

        write('Tong cuoi cung la ',t);


        readln
END.

