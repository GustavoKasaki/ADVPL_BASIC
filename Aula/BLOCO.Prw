#Include "Protheus.ch"

User Function XBLOCO_DBEVAL()
    // Local nVar               := 5
    Local bBloco

    Private nResult1
    Private nResult2
    Private aBloco          := {}
    Private nX              := 0

    // Acesso à tabela genérica X5
    DbSelectArea('SX5')
    SX5 -> (DbSetOrder(1))

    // nResult         := CALCULA(nVar)
    // bBloco                   := {|nPARAM| nResult1 := nPARAM * 5, nResult2 := nPARAM + 10}
    // bBloco                   := {|nPARAM, nPARAM2| CALCULA(nPARAM, nPARAM2)}
    bBloco                  := {|| nX++, aADD(aBloco, {X5_CHAVE, Capital(X5_DESCRI)})}
    bCondicao               := {|| X5_TABELA == '00'}

    // nResult2                 := Eval(bBloco, nVar)
    // Eval(bBloco, 10, 50)
    DBEval(bBloco,, bCondicao) // Somente para leitura de tabelas

Return

User Function XBLOCO_AEVAL()
    Local bExibirPos
    Local aArray            := {"Bruno","Lucas","Juliano","Marcos","Elaine"}

    bExibirPos              := {|x, y| MsgInfo(x + ' -> ' + cValToChar(y), 'Executa AEval')}

    AEval(aArray, bExibirPos, 3, 2)

Return

Static Function CALCULA(nPARAM, nPARAM2)
    nResult1                := nPARAM + 10
    nResult2                := nPARAM2 * 5
Return


User Function XWhileDB() // Mesma funcionalidade para DBEval
	SX5 -> (DBSetOrder(1))
	SX5 -> (DBGoTop())

    While X5_TABELA == '00'
		aADD(aBloco, {X5_CHAVE, Capital(X5_DESCRI)})

		SX5 -> (DBSkip())
    Enddo

Return
