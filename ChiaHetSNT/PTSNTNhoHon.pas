program PTThuaSoNToNhoHon;

uses crt;
var
        n,i,max,so:integer;

function PTTS(n:integer):String;
var
        s,tam:String;
        i:integer;

BEGIN
        s:=''; tam:='';

        for i:=2 to n do
        begin
                while(n mod i = 0) do
                begin
                        n:=n div i;
                        str(i,tam);
                        s:=s+tam+'*';


                end;

        end;
        delete(s,length(s),1);
        PTTS:=s;


END;

BEGIN
        clrscr;



        write('Nhap n:');readln(n);

         max:=length(PTTS(n));
         so:=n;

         write('So co nhieu thua so hon ', n ,' la:');

        while(n > 2) do
        begin
                dec(n);

                if(length(PTTS(n)) > max) then
                begin
                        max:=length(PTTS(n));
                        so:=n;

                end;

        end;

        write(so,'=',PTTS(so));


        readln
END.

