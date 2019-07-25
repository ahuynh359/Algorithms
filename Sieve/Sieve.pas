//Thuat toan sang so nguyen to tim so nguyen to < n cho truoc
//Khoang 30500
program Sieve;
uses crt;
const
        INPUT = 'Sieve\INPUT.txt';
        OUTPUT = 'Sieve\OUTPUT.txt';

var
        f:text;
        prime:array[1..200000] of boolean;
        n,i:integer;



procedure isPrimeNumber();
var
        i,j,boi:integer;
BEGIN




      fillChar(prime,sizeOf(prime),true);
      i:=1;
      prime[i]:=false;


        while (i <= trunc(sqrt(n))) do
        begin

                j:=i+1;
                while(prime[j] = false) do inc(j); //Tim so ngto khong false


                boi:=2;

                while(j*boi <= n) do
                begin
                        prime[j*boi]:=false;
                        inc(boi);

                end;


                i:=j;


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