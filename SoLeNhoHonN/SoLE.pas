program SoLeNhoHonN;
uses crt;
var
        n,i:integer;

//Kiem tra n co bn so
function SoCuaN(n:integer):integer;
var i:integer;
BEGIN
        i:=0;

        while(n > 0) do
        begin
                n:=n div 10;
                inc(i);


        end;

        SoCuaN:=i+1;

END;
BEGIN
        clrscr;

        write('Nhap n:');readln(n);

        i:=1;
        write('So nho hon ',5,':');

        while i < n do
        begin
                if(i mod 2 <> 0) then write(i:SoCuaN(n));
                inc(i);

        end;

        readln

END.
