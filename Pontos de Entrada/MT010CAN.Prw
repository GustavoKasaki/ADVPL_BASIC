#Include 'Protheus.ch'

User Function MT010CAN()
    Local nOpc      := ParamIxb[1] // Tratamentos do usu�rio

    If INCLUI
        If nOpc == 1
            MsgInfo('Cadastro conclu�do!')
        else
            MsgInfo('Opera��o cancelada!')
        EndIf
    EndIf

Return
