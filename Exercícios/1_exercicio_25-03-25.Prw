#Include "Protheus.ch"

User Function fProcVar()
	Local cVal, nTotGer, lVarl, cTem, lCont, lTudo
	Local cNom := ""
	Local nVal := 5
	Private nVal1:= 7 + 6, lVal, lQuas, nValor
	Public lVar := nVal == 5

	nVal1 += 15
	nValor := (((nVal1- nVal)/2) * 3^2 + 1 )* -1
	nTempo := 'nValor * 3'
	nTotGer:= &nTempo
	nTotGer++
	cTem := "S�o Paulo"
	cTem += ", 15 de Dezembro"
	lCont := "Dez" $ cTem
	lTudo := cTem = "S�o"
	lQuas := cTem == "S�o Paulo"
	lVal := nVal > 5
	lValc := (nVal1 - 8) <= 13

	fMudaFun(@nValor, lTudo, lQuas, lVal)
	msginfo(nValor)
Return

Static Function fMudaFun(_val, _lTudo, _lQuas, _lVal)
	msginfo(nVal1)
Return

User Function fContinua()
	Msginfo(lVar)
Return

/*
	Responda Verdadeiro ou Falso, nas afirma��es a seguir e justifique:
	a. (F) _lTudo na linha 18 ser� nula.						// Retorna o valor da valida��o
	b. (V) nTempo � do tipo caracter.							// O valor est� entre aspas
	c. (V) lCont tem o conte�do Verdadeiro.						// � verdadeiro pois o caracter 'Dez' existe no caracter cTem ("S�o Paulo, 15 de Dezembro")
	d. (V) lVar n�o esta vis�vel na linha 32.					// N�o pois n�o � chamada na fun��o
	e. (V) lTudo na linha 18 tem seu identificador Local.		// Sim pois foi declarada como Local
	f. (F) cNom na linha 21 � nula.								// N�o pois ela foi definida como um char vazio
	G. (V) nValor pode ser acessada na linha 28.				// Pois � uma variavel Private
*/
