Program criptografar;
Var
	palavra : string = 'CEDUP';
	i, num : integer;
	
function crip(msg: string; num: integer) : string;                                                                   
	var i : integer;
	begin
		for i := 1 to length(palavra) do
			palavra[i] := chr(ord(palavra[i]) + num);
			crip := palavra;
	end;
Begin
	num := 5;
	writeln('Palavra descriptografada: ',palavra);
	
	palavra := crip(palavra, num);
	writeln('Palavra criptografada: ',palavra);
	readkey;
End.                  
