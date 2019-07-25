//Thuat toan sang so nguyen to tim so nguyen to < n cho truoc
//Khoang 32700
program Sieve;
uses crt;
const
        INPUT = 'Sieve\INPUT.txt';
        OUTPUT = 'Sieve\OUTPUT.txt';

var
        f:text;
        prime:array[1..200000000] of boolean;
        n,i:integer;



procedure isPrimeNumber();
var
        i,j,boi:integer;
BEGIN
        fillChar(prime,sizeOf(prime),true);
        prime[1]:=false;

        for i:=2 to n do
        if(prime[i]) then
        begin
                j:=i+i;

                while(j<=n) do
                begin
                        prime[j]:=false;
                        inc(j);


                end;

        end;



END;

BEGIN
        clrscr;


        assign(f,INPUT);
        reset(f);
        read(f,n);
        close(f);

      isPrimeNumber();





        assign(f,OUTPUT);
        rewrite(f);

        for i:=1 to n do
        if (prime[i]) then writeln(f,i);

        close(f);


        readln

END.
