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
        n,i,boi:integer;




BEGIN
        clrscr;


        assign(f,INPUT);
        reset(f);
        read(f,n);
        close(f);



        fillChar(prime,sizeOf(prime),true);
        prime[1]:=false;

        i:=2;
        while (i <= trunc(sqrt(n)))  do
        begin
                while (prime[i] = false) do inc(i);

                boi:=2;
                while(i*boi <= N ) do
                begin
                        prime[i*boi]:=false;
                        inc(boi);

                end;
                inc(i);

        end;




        assign(f,OUTPUT);
        rewrite(f);

        for i:=1 to n do
        if (prime[i]) then writeln(f,i);

        close(f);


        readln

END.
