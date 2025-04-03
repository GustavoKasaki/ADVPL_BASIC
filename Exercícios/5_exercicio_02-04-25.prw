/*
1 - Realize um cadastro de cliente

2 - Crie uma fun��o, que deve:
    Receber como par�metro um c�digo de cliente.
    Buscar o cliente na tabela SA1 com o c�digo informado.
    Exibir uma mensagem informando se o cliente foi encontrado ou n�o.

    Dicas:

    Use DbSelectArea("SA1") para selecionar a tabela.

    Use DbSeek() para buscar o cliente.

3- Adicione na fun��o criada no exercicio 2:
    Se o cliente existir, utilize Reclock() para realizar uma altera��o no registro.
    Atualizar os seguintes campos do cliente:
    A1_NOME ? "CLIENTE ALTERADO"
    A1_END ? "ENDERE�O ALTERADO"
    Liberar o registro ap�s a atualiza��o.

    Dicas:

    Use Reclock("SA1",.F.) para bloquear o registro antes da altera��o.

    Utilize MsUnlock() para liberar o registro ap�s a atualiza��o.

4- utilizando o ponto de entrada A010TOK
    Verificar se o usu�rio estiver incluindo um novo produto (INCLUI), exibir uma mensagem perguntando:
    "Confirma a inclus�o do produto [NOME_DO_PRODUTO]?"
    Se o usu�rio confirmar, a fun��o deve continuar e incluir o registro.
    Se o usu�rio recusar, a fun��o deve retornar Falso, impedindo a inclus�o.

    Dicas:

    Use AllTrim(M->B1_DESC) para exibir o nome do produto corretamente.

    Estruture a l�gica com If...EndIf.

    Retorne .T. ou .F. para indicar se a inclus�o foi permitida

    Utilize MsgYesNo() para perguntar ao usuario.
*/

#Include 'Protheus.ch'

User Function XCADCLI(cCodCLI)
    Local cMsg

    DBSelectArea("SA1")
    SA1 -> (DBSetOrder(1))
    SA1 -> (DBGoTop())
    
    If DBSeek(cCodCLI)
        cMsg        := "Cliente encontrado!"
    Else
        cMsg        := "Cliente n�o encontrado!"
    Endif
    
    MsgInfo(cMsg, "Resultado da Busca")
    
    If DBSeek(cCodCLI)
        XATTCLI(cCodCLI)
    Endif

Return

Static Function XATTCLI(cCodCLI)
    Local cMsg
    Reclock("SA1", .F.) // Bloqueia o registro
    
    // Atualiza os campos
    SA1 -> A1_NOME  := "CLIENTE ALTERADO"
    SA1 -> A1_END   := "ENDERE�O ALTERADO"
    
    // Salva as altera��es
    DbCommit()
    
    // Libera o registro
    MsUnlock()
    
    cMsg            := "Cliente atualizado com sucesso!"
    MsgInfo(cMsg, "Atualiza��o")
Return

User Function PE_A010TOK()
    Local lConfirma
    Local cNomeProd
    Local cRet
    
    cNomeProd       := AllTrim(M -> B1_DESC)
    
    lConfirma       := MsgYesNo("Confirma a inclus�o do produto " + cNomeProd + "?")
    
    If lConfirma == .F.
        cRet        := .F.

        Else
            cRet    := .T.
    Endif

Return cRet
