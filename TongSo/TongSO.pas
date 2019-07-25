program TongSo;
uses crt;
const
        INPUT = 'TongSo\INPUT.txt';
        OUTPUT = 'TongSo\OUTPUT.txt';
        type mang = array[1..100] of integer;
var
        a:mang;
        i,j,n,b:integer;
        f:text;

procedure QUickSort(var a:mang;left,right:integer);
var
        i,j,pivot,tam:integer;
BEGIN
        i:=left;
        j:=right;
        pivot:=a[(left+right) div 2];


        repeat

                while (a[i] > pivot) do inc(i);
                while (pivot > a[j]) do dec(j);

                if i <= j then
                begin
                        tam:=a[i];
                        a[i]:=a[j];
                        a[j]:=tam;

                end;

                inc(i); dec(j);


        until i > j;


        if (j > left) then QuickSort(a,left,j);
        if (i < right) then QUickSort(a,i,right);

END;

BEGIN
        clrscr;
        assign(f,INPUT);
        reset(f);
                read(f,n); read(f,b);
                for i:=1 to n do readln(f,a[i]);
        close(f);

        for i:=1 to n do write(a[i]:3);
        writeln;
        QuickSort(a,1,n);

        for i:=1 to n do write(a[i]:3);




        readln


END.