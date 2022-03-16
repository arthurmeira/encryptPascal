Program criptografar ;

Var
	palavra : string = 'CEDUP';
	i, num : integer;

//Função crip() faz a criptografia. 
//'msg' = o que vai ser criptografado. 
//'num' = quantidade de indíces da criptografia, 'ABC = FGH'. 
//'For' vai percorrer o tamanho da nossa palavra inicial.
//'chr' retorna os caracteres da tabela ASCII. 
//'ord' retorna o valor ordinal que indica a ordem ou a série em que determinado número se encontra incluído '1º, 2 º, 3º'.

function crip(msg: string; num: integer) : string;                                                                   
	var i : integer;
	begin
		for i := 1 to length(palavra) do
			palavra[i] := chr(ord(palavra[i]) + num);
			crip := palavra;
	end;

Begin
//Aqui definimos quantas letras que vão ser puladas com 'num'.
	num := 5;
	writeln('Palavra descriptografada: ',palavra);
	
//Aqui chamamos a função 'crip() e o que queremos criptografar = 'palavra' e 'num'.
	palavra := crip(palavra, num);
	writeln('Palavra criptografada: ',palavra);
	readkey;
End.                  