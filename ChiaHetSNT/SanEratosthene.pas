program SangEratosthene;

uses crt;
var
        a:array[1..1000] of boolean;
        i,j,n,dem:integer;
function SNT(n:integer):boolean;
var
        i:integer;
BEGIN
        SNT:=false;

        if n < 2 then exit;
        for i:=2 to trunc(sqrt(n)) do
        if(n mod i = 0) then exit;

        SNT:= true;

END;

function So(n:integer):integer;
var
        dem:integer;
BEGIN
        dem:=1;
        while(  n > 0) do
        begin
                n:=n div 10;
                dem:=dem+1;

        end;

        So:=dem;
END;

BEGIN
        clrscr;
        write('Nhap n:');readln(n);

        for i:=1 to n do a[i]:=true;

        a[1]:=false;


                for i:=2 to trunc(sqrt(n)) do
                        begin
                                dem:=1;
                                if(SNT(i)) then
                                begin
                                        repeat
                                                inc(dem);
                                                a[i*dem]:=false;

                                        until i*dem > n;

                                end;


                        end;

                         for i:=1 to n-1 do
                         if(a[i]) then write(i:So(i));





        readln
END.

