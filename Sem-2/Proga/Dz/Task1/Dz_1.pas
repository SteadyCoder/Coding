program Find;
uses crt;
type
	F = text;
var
	ch:char;
	f1,f2:F;
	i,n:Integer;
	s:String;
begin clrscr;
	assign(f1,'Text.txt');
	rewrite(f1);
	assign(f2,'Text1.txt');
	//rewrite(f2);
	rewrite(f2);
	write('Amount of row ');
	readln(n);
		for i:= 1 to n do 
		begin			
			readln(s);
			writeln(f1,s);
		end;
		close(f1);
	reset(f1);
	
	while (not eof(f1)) do
	begin
		while (not eoln(f1)) do
		begin

		if not eoln(f1) then 
		begin
		read(f1,ch);
			if (ch <> ' ') then begin	
			while (ch <> ' ') and (not eoln(f1)) and not eof(f1) do
			begin	
				write(f2,ch);
				read(f1,ch);
			end;
			write(f2,ch);
			writeln(f2);	
			end
			else
			writeln(f2);
		end;

		end;
	readln(f1);
	end;
	
	writeln();
	writeln('The new file : ');
	reset(f2);
	while (not eof(f2)) do
	begin
		read(f2,ch);
		write(ch:1);
	end;
	close(f1);
	close(f2);
end.