program Doc;
uses crt;
const
        INPUT = 'INPUT.txt';
var
        f:text;
        i,n:integer;
        a:array [1..100] of integer;

begin
        clrscr;

        assign(f,INPUT);
        reset(f);

        i:=1;

        readln(f,n);

        while not(EOF(f)) do
        begin
                        read(f,a[i]);
                        inc(i);






        end;
        close(f);

        for i:=1 to n do write(a[i]:3);


        readln

end.
