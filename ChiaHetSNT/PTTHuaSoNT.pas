{*Co the bo qua buoc kiem tra SNT
vi khi ko chia het cho 1 so dong nghia khong chia het cho boi cua no*}



program PTThuaSoNT;
uses crt;
var
        n,i,thuong,nto:integer;
        kq,tam:string;

{*
function SNT(n:integer):boolean;
var
        i:integer;
BEGIN
        SNT:=false;
        if n < 2 then exit;

        for i:=2 to trunc(sqrt(n)) do
        if n mod i = 0 then exit;

        SNT:=true;

END;
*}

BEGIN
        clrscr;

        write('Nhap n:');readln(n);

        write(n,'=');

        nto:=1;
        kq:='';



        while(n <> 1) do
        begin

                //Phat sinh SNT\
               // repeat
                    inc(nto);
               // until SNT(nto);

                while(n mod nto = 0) do
                begin
                        n:=n div nto;
                        str(nto,tam);
                        kq:=kq+tam+'*';
                end;


        end;

        delete(kq,length(kq),1);
        write(kq);





        readln

END.
