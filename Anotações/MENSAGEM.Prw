#Include 'Protheus.ch'

User Function ALMSG()
    MsgInfo('Exemplo de uma mensagem', 'Título')
    Alert('Exemplo de um alert', 'Título')
    MsgStop('Exemplo de um stop', 'Título')
    
    lVar := MsgYesNo('Exemplo de uma mensagem condicional, retornando true ou false', 'Título')

Return


User Function ALAVISO()
    Local cTitulo       := 'Título aviso'
    Local cMensagem     := 'Selecione uma opção' + CRLF
    Local cMensagem2    := 'dos botões a seguir'
    Local aBotoes       := {'Sim', 'Não', 'Sair'}
    Local nTamanho      := 1
    Local cTexto        := 'Subtítulo'

    cMensagem += cMensagem2

    // nRet retorna a posição do botão (Sim = 1, Não = 2, Sair = 3)
    nRet := AVISO(cTitulo, cMensagem, aBotoes, nTamanho, cTexto)

Return
