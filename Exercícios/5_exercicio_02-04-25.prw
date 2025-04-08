/*
1 - Realize um cadastro de cliente

2 - Crie uma função, que deve:
    Receber como parâmetro um código de cliente.
    Buscar o cliente na tabela SA1 com o código informado.
    Exibir uma mensagem informando se o cliente foi encontrado ou não.

    Dicas:

    Use DbSelectArea("SA1") para selecionar a tabela.

    Use DbSeek() para buscar o cliente.

3- Adicione na função criada no exercicio 2:
    Se o cliente existir, utilize Reclock() para realizar uma alteração no registro.
    Atualizar os seguintes campos do cliente:
    A1_NOME ? "CLIENTE ALTERADO"
    A1_END ? "ENDEREÇO ALTERADO"
    Liberar o registro após a atualização.

    Dicas:

    Use Reclock("SA1",.F.) para bloquear o registro antes da alteração.

    Utilize MsUnlock() para liberar o registro após a atualização.

4- utilizando o ponto de entrada A010TOK
    Verificar se o usuário estiver incluindo um novo produto (INCLUI), exibir uma mensagem perguntando:
    "Confirma a inclusão do produto [NOME_DO_PRODUTO]?"
    Se o usuário confirmar, a função deve continuar e incluir o registro.
    Se o usuário recusar, a função deve retornar Falso, impedindo a inclusão.

    Dicas:

    Use AllTrim(M->B1_DESC) para exibir o nome do produto corretamente.

    Estruture a lógica com If...EndIf.

    Retorne .T. ou .F. para indicar se a inclusão foi permitida

    Utilize MsgYesNo() para perguntar ao usuario.
*/

#Include 'Protheus.ch'

User Function BUSCACLI(cCodCLI)
	Local cMsg
    Local Area := GetArea()

	DBSelectArea("SA1")
	SA1->(dbSetOrder(1))
	SA1->(dbGoTop())

	If SA1->(dbSeek(xFilial(SA1) + cCodCLI))
		cMsg          := "Cliente encontrado!"

        RecLock("SA1", .F.)
        SA1->A1_NOME  := "CLIENTE ALTERADO"
        SA1->A1_END   := "ENDEREÇO ALTERADO"
        SA1->(msUnlock())

	Else
		cMsg        := "Cliente não encontrado!"
	Endif

	MsgInfo(cMsg, "Resultado da Busca")

Return Area

User Function PE_A010TOK()
	Local lConfirma
	Local cNomeProd
	Local cRet

	cNomeProd       := AllTrim(M -> B1_DESC)

	lConfirma       := MsgYesNo("Confirma a inclusão do produto " + cNomeProd + "?")

	If lConfirma == .F.
		cRet        := .F.

	Else
		cRet        := .T.
	Endif

Return cRet
