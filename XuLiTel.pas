program DocTep;
uses crt;

const
        INPUT = 'INPUTAHIHI.txt';
var
        f:text;
        a:array [1..1000] of String;
        i,j:integer;
        g:file of integer;
BEGIN
        clrscr;


        //String thi doc het nguyen hang con char chi doc tung ki tu

        assign(f,'INPUTAHIHI.txt');
        reset(f);


       // write(FileSize(g));
      //  seek(f,0);
      while not (EOF(f)) do
      begin
        while not (EOLN(f)) do
        begin
        inc(i);
        read(f,a[i]);


        end;
        readln(f);
      end;

     {*   for j:=1 to 3 do
        begin
                while not (EOLn(f)) do
                begin
                        inc(i);
                        read(f,a[i]);
                        write(' a[',i,']=',a[i]);
                        if(i = 3) then i:=0;

                end;
                writeln;
                readln(f);
        end; *}

        close(f);

        for i:=1 to 9 do write(a[i]:3);



        readln

END.