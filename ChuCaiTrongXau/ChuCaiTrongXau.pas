program ChuCaiTrongXau;

uses crt;
var
        s:String;
        a:array['A'..'Z'] of integer;
        dem:integer;
        i:byte;
        z:char;

BEGIN
        clrscr;

        write('Nhap xau:');readln(s);

        for i:=1 to length(s) do
        if(upcase(s[i]) in ['A'..'Z']) then inc(a[upcase(s[i])]);

        for  z:='A' to 'Z' do
        if a[z] > 0 then writeln(z ,' co:', a[z] ,' chu cai');


        readln
END.


