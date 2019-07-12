program ChinhHop;
uses crt;
var
        i,l,n,j,k,dem:integer;
        a:array[1..10] of integer;


BEGIN
        clrscr;


        write('Nhap n:');readln(n);
        write('Nhap k:');readln(k);


        for i:=1 to k do a[i]:=1;


        repeat
                inc(dem);
                for i:=1 to k do write(a[i]:3);
                writeln;

                 i:=k;
                while (i>0) and (a[i] = n) do dec(i); //Tim phan tu dau tien khac n
                if(i>0) then
                begin
                        inc(a[i]);
                        for j:=i+1 to k do a[j]:=1;

                end;








        until i = 0;

        writeln;
        write('Co tong cong:', dem ,' chinh hop chap ', k,' cua ',n);


        readln

END.
