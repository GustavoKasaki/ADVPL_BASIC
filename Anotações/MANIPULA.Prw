#Include 'Protheus.ch'

User Function MANIPULA()
    Local cVar01 := '50 GUSTAVO'
    Local cVar02 := 'TEXTO'
    Local nVar01 := 531
    Local cCpf := '40142276855'

    // Converter string em numero (remove todo o texto)
    cResult := VAL(cVar01) + 100

    // Divide a string a partir da posi��o definida no segundo argumento e retorna desta posi��o para a direita
    cSub := SUBSTR(cVar01, 4)

    // Divide a string do in�cio at� a posi��o definida no segundo argumento
    cLeft := LEFT(cVar01, 2)

    // Divide a string do fim at� a posi��o definida no segundo argumento (de tr�s para frente)
    cRight := RIGHT(cVar01, 4)

    // Centraliza a string na quantidade de espa�os definidos no segundo argumento
    // (um terceiro argumento pode ser colocado, para trocar os espa�os por algum outro caractere)
    cCentra := PADC(cVar02, 10, '-')

    // Posiciona a string � direita na quantidade de espa�os definidos no segundo argumento
    // (um terceiro argumento pode ser colocado, para trocar os espa�os por algum outro caractere)
    cEspDir := PADR(cVar02, 10, '-')

    // Posiciona a string � esquerda na quantidade de espa�os definidos no segundo argumento
    // (um terceiro argumento pode ser colocado, para trocar os espa�os por algum outro caractere)
    cEspEsq := PADL(cVar02, 10, '-')

    // Remove os espa�os de ambas as extremidades da string
    cAllTrim := Alltrim('    ESPACO               ')

    // Remove os espa�os � direita da string
    cRTrim := RTRIM('    ESPACO               ')

    // Remove os espa�os � esquerda da string
    cLTrim := LTRIM('    ESPACO               ')

    // Transforma uma variavel num�rica em string, adicionando espa�os � esquerda (o segundo argumento determina o comprimento da string)
    cStr := STR(nVar01, 10)

    // Transforma uma variavel num�rica em string, adicionando zeros � esquerda (o segundo argumento determina o comprimento da string)
    cStrZero := STRZERO(nVar01, 10)

    // Transforma a string conforme disposto na mascara do segundo argumento
    cTransf := TRANSFORM(cCpf, '@R 999.999.999-99')

Return
