#Include 'Protheus.ch'

User Function ARRAY()

    // 1. Criar um vetor “uni-dimencional” com os nomes de seus colegas de classe.
    Local aArray    := {}

    aAdd(aArray, 'Gustavo')
    aAdd(aArray, 'Camilo')
    aAdd(aArray, 'Elisa')
    aAdd(aArray, 'Leandro')
    aAdd(aArray, 'Marcos')

    cArray      := ArrTokStr(aArray, '; ')
    MsgInfo(cArray)

    // 2. Escolha um de seus colegas e altere o seu nome, complementando com seu sobrenome.
    aArray[2]   += ' Todes'

    cArray      := ArrTokStr(aArray, '; ')
    MsgInfo(cArray)

    // 3. Criar um vetor de 5 linhas com 3 Colunas e dar o nome de aArray1.
    aArray1         := {{'A1', 'A2', 'A3'}, {'B1','B2','B3'}, {'C1','C2','C3'}, {'D1','D2','D3'}, {'E1','E2','E3'}}

    cLinha1         := ArrTokStr(aArray1[1], '; ')
    cLinha2         := ArrTokStr(aArray1[2], '; ')
    cLinha3         := ArrTokStr(aArray1[3], '; ')
    cLinha4         := ArrTokStr(aArray1[4], '; ')
    cLinha5         := ArrTokStr(aArray1[5], '; ')
    MsgInfo(cLinha1 + CRLF + cLinha2 + CRLF + cLinha3 + CRLF + cLinha4 + CRLF + cLinha5)

    // 4. Criar um vetor de 10 linhas com 1 Coluna e dar o nome de aArray2.
    aArray2         := {{'A1'}, {'B1'}, {'C1'}, {'D1'}, {'E1'}, {'F1'}, {'G1'}, {'H1'}, {'I1'}, {'J1'}}

    // 5. Atribuir ao Vetor a Array1 linha 1 coluna 1 o conteúdo “X”
    aAdd(aArray1[1,1], 'X')

    // 6. Atribuir ao Vetor a Array1 linha 3 coluna 2 o conteúdo 9
    aArray1[3,2]    += 9

    // 7. Atribuir ao Vetor a Array1 linha 5 coluna 3 o conteúdo .T.
    aArray1[5,3]    += .T.

    // 8. Atribuir ao Vetor a Array1 linha 1 coluna 3 o conteúdo do aArray2 Linha 5 coluna
    aArray1[1,3]    += aArray2[5]
Return
