program BangSo;
uses crt;
const
        INPUT = 'Bangso\INPUT.txt';
        OUTPUT = 'Bangso\OUTPUT.txt';
var
        mang:array[1..100,1..100] of integer;
        n,i,j,k,l,max,a,b,tam,tong,x,y,ptdx,ptdy,xx,yy:integer;
        f:text;

BEGIN
        clrscr;


        assign(f,INPUT);
        reset(f);

           read(f,a);   readln(f,b);


           //Doc ma tran
           for i:=1 to a do
           begin
                for j:=1 to b do read(f,mang[i,j]);
                readln(f);
           end;

           //gan max cho 9 ptu dau
           for i:=1 to 3 do
                for j:=1 to 3 do inc(max,mang[i,j]);





        close(f);



        assign(f,OUTPUT);
        rewrite(f);

                for i:=1 to b-2 do
                 begin

                        for j:=1 to a-2 do
                        begin
                                tong:=0;
                                 ptdx:=i;
                                 ptdy:=j;

                                for x:=i to i+2 do
                                        for y:=j to j+2 do
                                                tong:=tong+mang[x,y];
                                if ( tong > max) then
                                begin
                                        max:=tong;
                                         xx:=ptdx;
                                         yy:=ptdy;
                                end;

                        end;
                 end;

                 writeln(f,max);
                 write(f,xx,' '); write(f,yy);

        close(f);



        readln

END.