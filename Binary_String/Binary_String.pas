program Binary_String_Enumeration;
uses crt;

const
        INPUT = 'Binary_String\INPUT.txt';
        OUTPUT = 'Binary_String\OUTPUT.txt';

var
        a:array [1..10] of byte;
        i:byte;
        n:integer;
        f:text;


BEGIN
        clrscr;


        assign(f,INPUT);
        reset(f);
        read(f,n);
        close(f);

        assign(f,OUTPUT);
        rewrite(f);

        fillchar(a,sizeof(a),0);
        repeat
                for i:=1 to n do write(f,a[i]);
                writeln(f);

                while (i > 0) and (a[i] = 1) do dec(i);

                if (i > 0) then
                begin
                        a[i]:=1;
                        FillChar(a[i+1],(n-i)*SizeOF(a[1]),0);

                end;

        until i = 0;

        close(f);

        readln


END.