program DayDaiNhatCoTongChiaHetChoK;
uses crt;
const
        FI = 'QBSEQ\INP.txt';
        FO = 'QBSEQ\OUT.txt';
var
        a,b:array[1..1000] of integer;
        k:byte;
        n,i,dem:integer;
procedure ReadData;
var
        f:text;
        i:integer;
BEGIN
        assign(f,FI);
        reset(f);

        readln(f,n,k);
        i:=0;

        while not(EOF(f)) do
        begin
                while not (EOLN(f)) do
                begin
                        inc(i);
                        read(f,a[i]);

                end;

                readln(f);

        end;

        close(f);

END;

procedure WriteData;
var
        f:text;
BEGIN
        assign(f,FO);
        reset(f);
        write(f,dem);

        close(f);

END;
BEGIN
        clrscr;

        ReadData;

        WriteData;
        readln

END.
