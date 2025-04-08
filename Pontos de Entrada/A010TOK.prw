#include "Protheus.ch"

User Function A010TOK()
	Local lRet := .T.

	If !IsBlind()
		If INCLUI
			lMsg := MsgYesNo("Confirma a inclusao do produto " + AllTrim(M->B1_DESC) + "?")

			If lMsg == .F.
				lRet := .F.
			Else
				MsgInfo('Operação cancelada! Realize as alterações necessárias e confirme a inclusão.')
			Endif
		Endif
	Endif

Return lRet
