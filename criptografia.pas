Program criptografar ;

Var
	palavra : string = 'CEDUP';
	i, num : integer;

//Fun��o crip() faz a criptografia. 
//'msg' = o que vai ser criptografado. 
//'num' = quantidade de ind�ces da criptografia, 'ABC = FGH'. 
//'For' vai percorrer o tamanho da nossa palavra inicial.
//'chr' retorna os caracteres da tabela ASCII. 
//'ord' retorna o valor ordinal que indica a ordem ou a s�rie em que determinado n�mero se encontra inclu�do '1�, 2 �, 3�'.

function crip(msg: string; num: integer) : string;                                                                   
	var i : integer;
	begin
		for i := 1 to length(palavra) do
			palavra[i] := chr(ord(palavra[i]) + num);
			crip := palavra;
	end;

Begin
//Aqui definimos quantas letras que v�o ser puladas com 'num'.
	num := 5;
	writeln('Palavra descriptografada: ',palavra);
	
//Aqui chamamos a fun��o 'crip() e o que queremos criptografar = 'palavra' e 'num'.
	palavra := crip(palavra, num);
	writeln('Palavra criptografada: ',palavra);
	readkey;
End.                  