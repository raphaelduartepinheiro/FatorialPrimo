Program FatorialPrimo;

Function VerificaPrimo(numero:Integer):Integer;
var
	NumeroDeDivisiveis, i: Integer;
begin
  NumeroDeDivisiveis := 0;
	for i:= 1 to numero do
	begin
		if (numero mod i = 0) then
			NumeroDeDivisiveis:= NumeroDeDivisiveis + 1;
	end;

	if NumeroDeDivisiveis = 2 then    
	  VerificaPrimo := numero
	else
	  VerificaPrimo := 1;
end;

Function FazFatorialPrimo(numero:Integer):Integer;
var 
  i, total: Integer;
begin
	total := 1;
	for i := numero downto 1 do
	begin
	  total := total * VerificaPrimo(i);
	end; 
	
	FazFatorialPrimo := total;
end;

Begin
//O fatorial primo de um número primo positivo é o produto de todos os primos
//positivos menores do que ou iguais a ele. 
//Escreva funções, iterativa e recursiva,
//para a determinação do fatorial primo de um inteiro primo dado

writeln(FazFatorialPrimo(13));
End.