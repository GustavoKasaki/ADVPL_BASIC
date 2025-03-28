#Include "Protheus.ch"

User Function ALMSG()

    MsgInfo("Corpo da mensagem","Titulo")
    Alert("Corpo","Titulo")
    MsgStop("Corpo","Titulo")
    Help(, , "TITULO", , "CORPO DO TEXTO", 1, 0, , , , , , {"Menssagem de solucao"})
    lVar := MsgYesNo("Deseja prosseguir?","Titulo")

Return

User Function ALAVISO()
    Local cTitulo 	    := "Titulo aviso"
	Local cMensagem     := "Selecione uma opcao" + CRLF
    Local cMensagem2    := "dos botoes a seguir"
	Local aBotoes       := {"Nao","Sim","Sair"}
	Local nTamanho      := 1
    Local cTexto        := "Sob o titulo"

    cMensagem += cMensagem2

	nRet := AVISO(cTitulo, cMensagem, aBotoes, nTamanho, cTexto )

Return
