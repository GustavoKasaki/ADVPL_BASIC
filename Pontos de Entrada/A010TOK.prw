#include "Protheus.ch"

User Function A010TOK()
	Local lRet := .T.

	If !IsBlind()
		If INCLUI
			lMsg := MsgYesNo("Confirma a inclusao do produto " + AllTrim(M->B1_DESC) + "?")

			If lMsg == .F.
				lRet := .F.
			Else
				MsgInfo('Opera��o cancelada! Realize as altera��es necess�rias e confirme a inclus�o.')
			Endif
		Endif
	Endif

Return lRet
