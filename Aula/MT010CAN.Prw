#Include 'Protheus.ch'

User Function MT010CAN()
    Local nOpc      := ParamIxb[1] // Tratamentos do usuário

    If INCLUI
        If nOpc == 1
            MsgInfo('Cadastro concluído!')
        else
            MsgInfo('Operação cancelada!')
        EndIf
    EndIf

Return
