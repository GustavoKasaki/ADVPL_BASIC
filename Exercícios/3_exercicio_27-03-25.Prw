#Include 'Protheus.ch'
//Link de fun��es para manipula��o de matriz
//https://tdn.totvs.com/pages/viewpage.action?pageId=6063768

//Dicas de fun��es
//aSize(ARRAY,5)
//AFill( ARRAY, CONTEUDO, ELEMENTO INICIAL, QUANTOS ELEMENTOS )
//Array(5,3)

User Function ExArray()

// 1-Criando um vetor com nomes:
// Declare um array unidimensional chamado aAlunos contendo os nomes de tr�s colegas de classe.

    Local aAlunos         := Array(3)
    
    aAlunos[1]      := 'Gustavo'
    aAlunos[2]      := 'Camilo'
    aAlunos[3]      := 'Elton'

// 2-Expandindo o vetor:
// Aumente o tamanho do array aAlunos adicionando mais dois espa�os vazios.

    aSize(aAlunos, 5)

// 3-Preenchendo os novos espa�os:
// Insira o nome de dois colegas nos espa�os adicionados no exerc�cio anterior.

    aAlunos[4]      := 'Elaine'
    aAlunos[5]      := 'Laryssa'

// 4-Criando uma matriz para representar a turma:
// Crie um array bidimensional de 5 linhas por 3 colunas e nomeie-o como aTurma.

    Local aTurma          := Array(5,3)

// 5-Preenchendo a matriz com os nomes dos alunos:
// Insira os nomes armazenados no vetor aAlunos na primeira coluna do array aTurma, preenchendo todas as linhas.

    aFill(aTurma[1], aAlunos[1], 1, 1)
    aFill(aTurma[2], aAlunos[2], 1, 1)
    aFill(aTurma[3], aAlunos[3], 1, 1)
    aFill(aTurma[4], aAlunos[4], 1, 1)
    aFill(aTurma[5], aAlunos[5], 1, 1)

Return
