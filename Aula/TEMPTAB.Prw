#Include 'Protheus.ch'

User Function XTMPTAB()
    Local aCampos   := {}
    Local aDados    := { {'000001', 'REGISTRO 01'},;
                         {'000002', 'REGISTRO 02'},;
                         {'000003', 'REGISTRO 03'} }
    Local cFiles
    Local cAlias    := 'TMP'
    Local nI
    Local cMsg      := ''
    
    aAdd(aCampos, {'MP_COD' , 'C',  6, 0})
    aAdd(aCampos, {'MP_DESC', 'C', 50, 0})

    cFiles   := CRIATRAB(aCampos, .T.)
    dbUseArea(.T., 'TOPCCON', cFiles, (cAlias), .F., .F.)

    dbSelectArea(cAlias)
    INDREGUA(cAlias, 'INDMP', 'MP_COD',,, 'Criando índice...')

    For nI := 1 to Len(aDados)
        RecLock(cAlias, .T.)
        TMP->MP_COD     := aDados[nI][1]
        TMP->MP_DESC    := aDados[nI][2]
        TMP->(MsUnlock())
    Next

    TMP->(dbGoTop())

    While !TMP->(EOF())
        cMsg += 'Código: '      + TMP->MP_COD   + CRLF
        cMsg += 'Descrição: '   + TMP->MP_DESC  + CRLF
        cMsg += '------------------------------------------' + CRLF

        TMP->(dbSkip())
    EndDo

    MsgInfo(cMsg)

    // dbCloseArea()
Return
