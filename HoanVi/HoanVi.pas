program HoanVi;
uses crt;
var
        n,i,j,k,v,b:integer;
        a:array[1..100] of integer;
procedure Swap ( var a,b:integer);
var
        x:integer;
BEGIN
        x:=a;
        a:=b;
        b:=x;

END;
BEGIN
        clrscr;

        write('Nhap n:');readln(n);

        if  n = 0 then write('1') else
        begin

        for i:=1 to n do a[i]:=i;

        repeat
                for i:=1 to n do write(a[i]:3);
                writeln;

                i:=n-1;

                while ( i>0) and (a[i] > a[i+1]) do dec(i);

                if i > 0 then
                begin
                        j:=n;
                        while (a[j] < a[i]) do dec(j);
                        Swap(a[j],a[i]);
                        v:=i+1;
                        b:=n;

                        while v < b do
                        begin
                                Swap(a[v],a[b]);
                                inc(v);
                                dec(b);

                        end;


                end;


        until i = 0;
        end;
        readln
END.