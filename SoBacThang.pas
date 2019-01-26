program ChuSoBacThang;

uses crt;
var i:integer;
cs: set of byte;
function BT(n:integer):boolean;

var so:integer;
BEGIN
        BT:=false;
        if ( n in cs) then exit;
        while (n >= 10) do
        begin
                so:=n mod 10;
                n:=n div 10;

                if so < (n mod 10)  then exit ;

        end;

        BT:=true;

END;

BEGIN
        clrscr;
        cs:=[1..10];
        for i:=1 to 100 do
        if(BT(i)) then
        write(  i:5);
        readln
END.

