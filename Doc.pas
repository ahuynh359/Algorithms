program Doc;
uses crt;
const
        INPUT = 'INPUT.txt';
var
        f:text;
        i,n,j:integer;
        a:array [1..100] of integer;

begin
        clrscr;

        assign(f,INPUT);
        reset(f);

        i:=1;

        readln(f,n);


        while not(EOF(f)) do
        begin
                while not(EOLn(f)) do
                begin
                        read(f,a[i]);
                        inc(i);


                end;

        end;

        close(f);

        for i:=1 to 25 do write(a[i]:3);



       {* for i:=1 to n do
        begin
                if( j mod 5 = 0) then
                begin
                        writeln;
                        j:=0;
                end else
                begin
                        write(a[i]:3);
                        inc(j);

                end;

        end;*}


        readln

end.