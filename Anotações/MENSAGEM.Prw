#Include 'Protheus.ch'

User Function ALMSG()
    MsgInfo('Exemplo de uma mensagem', 'T�tulo')
    Alert('Exemplo de um alert', 'T�tulo')
    MsgStop('Exemplo de um stop', 'T�tulo')
    
    lVar := MsgYesNo('Exemplo de uma mensagem condicional, retornando true ou false', 'T�tulo')

Return


User Function ALAVISO()
    Local cTitulo       := 'T�tulo aviso'
    Local cMensagem     := 'Selecione uma op��o' + CRLF
    Local cMensagem2    := 'dos bot�es a seguir'
    Local aBotoes       := {'Sim', 'N�o', 'Sair'}
    Local nTamanho      := 1
    Local cTexto        := 'Subt�tulo'

    cMensagem += cMensagem2

    // nRet retorna a posi��o do bot�o (Sim = 1, N�o = 2, Sair = 3)
    nRet := AVISO(cTitulo, cMensagem, aBotoes, nTamanho, cTexto)

Return
