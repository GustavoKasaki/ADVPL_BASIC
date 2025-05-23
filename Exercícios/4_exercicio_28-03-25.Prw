/*
Exerc�cio: C�lculo da M�dia e Status dos Alunos
Objetivo:
Com base em um array bidimensional contendo os nomes dos alunos e suas notas, 
exibir na tela o nome de cada aluno seguido de sua m�dia e situa��o acad�mica, conforme a regra abaixo:

    "Aprovado" se a m�dia for maior que 25

    "Exame" se a m�dia estiver entre 10 e 25

    "Reprovado" se a m�dia for menor que 10

Exemplo de entrada (array bidimensional):
    aArray := { { �Maria�, 10, 7, 15, 31} ,;
    { �Jose �, 15, 16, 21, 33} , ;
    { �Petruncio�, 8, 8, 8, 6} , ;
    { �Firmino�, 15, 16, 21, 33} , ;
    { �Felizberto�, 10, 17, 31, 25} }

Sa�da esperada:
    Carlos - M�dia: 30 - Aprovado  

Tarefas:
    1-Criar um array bidimensional (aTurma) onde cada linha representa um aluno e suas notas.

    2-Calcular a m�dia das notas de cada aluno.

    3-Determinar o status do aluno com base na m�dia.

    4-Exibir na tela o nome do aluno, sua m�dia e sua situa��o acad�mica.

Estruturade repeticao recomendado:
    FOR nI := 1 To Len(aTurma)
        FOR nX := 1 To Len(aTurma[nI])
        Next
    NEXT

*/

#Include 'Protheus.ch'

User Function MEDIA()
    Local aAlunos           := {}
	Local nNota             := 0
    Local nMedia             := 0
	Local nL, nC            // nL = numero da linha | nC = numero da coluna
    Local cMsg              := ''

    aAdd(aAlunos, {'Maria', 10, 7, 15, 31})
    aAdd(aAlunos, {'Jose', 15, 16, 21, 33})
    aAdd(aAlunos, {'Petruncio', 8, 8, 8, 6})
    aAdd(aAlunos, {'Firmino', 25, 25, 21, 33})
    aAdd(aAlunos, {'Felizberto', 10, 17, 31, 25})

    For nL := 1 to Len(aAlunos)
        nNota := 0

        For nC := 1 To Len(aAlunos[nL])
            If nC != 1 .And. Valtype(aAlunos[nL][nC]) == "N"
                nNota += aAlunos[nL][nC]
            Endif
        Next

        nMedia := nNota / 4

        If nMedia > 10
            If nMedia > 25
                // MSgInfo(aAlunos[nL][1] + " passou","Resultado")
                cMsg    += aAlunos[nL][1] + ' - M�dia: ' + CVALTOCHAR(nMedia) + ' - Aprovado' + CRLF
            
                Else
                    // MSgInfo(aAlunos[nL][1] + " precisa do exame","Resultado")
                    cMsg    += aAlunos[nL][1] + ' - M�dia: ' + CVALTOCHAR(nMedia) + ' - Exame' + CRLF
            Endif

        Else
            // MSgAlert(aAlunos[nL][1] + " reprovou","Resultado")
            cMsg    += aAlunos[nL][1] + ' - M�dia: ' + CVALTOCHAR(nMedia) + ' - Reprovado' + CRLF
        Endif
	Next

    MsgInfo(cMsg)
Return
