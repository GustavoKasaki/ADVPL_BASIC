#Include "Protheus.ch"

User Function MT010CAN()
	Local nOpc := ParamIxb[1]//  TRATAMENTOS DO USU�RIO.

	If INCLUI
		If nOpc == 1
			MsgInfo("CONCLUIDO")
		Else
			MsgInfo("CANCELADO")
		ENdif
	Endif
    
Return
