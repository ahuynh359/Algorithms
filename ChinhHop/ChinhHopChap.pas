program CHinhHopChapK;
uses crt;
var
        i,j,k,v,b,n:integer;
        a:array[1..100] of integer;

BEGIN
        clrscr;

        write('Nhap n:');readln(n);
        write('Nhap k:');readln(k);

        for i:=1 to k do a[i]:=i;

        repeat
                for i:=1 to k do write(a[i]:3);
                writeln;

                i:=k;
                while (i>0) and (a[i] = n-k+i) do dec(i);
                if ( i>0) then
                begin
                        inc(a[i]);
                        for j:=i+1 to k do a[j]:=a[j-1]+1;

                end;



        until i = 0;
        readln
END.
