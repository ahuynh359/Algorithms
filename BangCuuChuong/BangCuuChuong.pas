program BangCuuChuong;

uses crt;
const w = 17;

var
        i,j,dem,h:byte;

BEGIN
        clrscr;

        dem:=0;

        for i:=2 to 6 do
        begin
                h := 0;
                inc(dem);
                if(dem = i -1 ) then
                begin
                writeln;
                writeln;
                writeln;
                writeln;
                write('AHUIHI:');
                dem:=0;

                end;
                gotoxy(i*w,1+h);
                writeln('Bang', i);
                for j:=1 to 10 do
                begin
                        gotoxy(i*w,j+1+h);
                        writeln(i ,'*', j ,'=',i*j);


                end;
        end;


        readln
END.

