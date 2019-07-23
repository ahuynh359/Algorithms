program SoTrungVi;
uses crt;
const
        INPUT = 'SoTrungVi\Input.txt';
        OUTPUT = 'SoTrungVi\Output.txt';
type mang = array[1..100,1..100] of integer;
     b = array[1..100] of integer;
var
        a:mang;
        n:integer;
        i,j,k,l:integer;
        f:text;
        m,kq:b;

procedure ReadData();

BEGIN
        assign(f,INPUT);
        reset(f);

        readln(f,n);
        for i:=1 to n do
                for j:=1 to n do
                read(f,a[i,j]);

        close(f);


END;

procedure WriteData();
BEGIN
        assign(f,OUTPUT);
        rewrite(f);

        write(f,kq[(1+n) div 2]);
        close(f);
END;

procedure Swap(var a,b:integer);
var
        tmp:integer;
BEGIN
        tmp:=a;
        a:=b;
        b:=tmp;

END;

procedure Sort(var a:b;i,j:integer);
var
        pivot:integer;
        left,right:integer;
BEGIN
        pivot:=a[(i+j) div 2];
        left:=i;
        right:=j;


        repeat
                while (a[left] < pivot) do inc(left);
                while (a[right] > pivot) do dec(right);

                if(left <= right) then
                begin
                        Swap(a[left],a[right]);
                        inc(left); dec(right);

                end;

        until left > right;

        if (left < j) then Sort(a,left,j);
        if (right > i) then Sort(a,i,right);







END;

procedure ChangeArray(cot:integer);
var
        hang:integer;
BEGIN
        for hang:=1 to n do m[hang]:=a[cot,hang];

END;

BEGIN

        clrscr;

        ReadData();

        j:=1;

        for i:=1 to n do
        begin
                ChangeArray(i);
                Sort(m,1,n);
                kq[j]:=m[(1+n) div 2];
                inc(j);



        end;

        Sort(kq,1,n);


         for k:=1 to n do write(kq[k]:3);


        WriteData();
        readln

END.
