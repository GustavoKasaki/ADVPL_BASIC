#Include 'Protheus.ch'

User Function BuscaCliente(cCodigoCliente)
    Local cMensagem
    DbSelectArea("SA1")

    SA1->(DbSetOrder(1))
    SA1->(DbGoTop())
    
    If DbSeek(cCodigoCliente)
        cMensagem := "Cliente encontrado!"
    Else
        cMensagem := "Cliente n�o encontrado!"
    Endif
    
    MsgInfo(cMensagem, "Resultado da Busca")
    
    If DbSeek(cCodigoCliente)
        // Chama a fun��o para atualizar o cliente
        AtualizaCliente(cCodigoCliente)
    Endif
Return


/*### 3. Fun��o para Atualizar Cliente
Agora, vamos adicionar a fun��o que atualiza os dados do cliente se ele existir:*/


User Function AtualizaCliente(cCodigoCliente)
    Local cMensagem
    Reclock("SA1", .F.) // Bloqueia o registro
    
    // Atualiza os campos
    SA1->A1_NOME := "CLIENTE ALTERADO"
    SA1->A1_END := "ENDERE�O ALTERADO"
    
    // Salva as altera��es
    DbCommit()
    
    // Libera o registro
    MsUnlock()
    
    cMensagem := "Cliente atualizado com sucesso!"
    MsgInfo(cMensagem, "Atualiza��o")
Return


/*### 4. Ponto de Entrada A010TOK
Por fim, vamos implementar o ponto de entrada A010TOK para confirmar a inclus�o de um novo produto:*/

User Function PE_A010TOK()
    Local lConfirmacao
    Local cNomeProduto
    
    cNomeProduto := AllTrim(M->B1_DESC) // Nome do produto
    
    lConfirmacao := MsgYesNo("Confirma a inclus�o do produto " + cNomeProduto + "?")
    
    If lConfirmacao == .F.
        Return .F. // Impede a inclus�o
    Endif
    
    // Se confirmado, continua com a inclus�o
    Return .T.


/*1 - Realize um cadastro de cliente*/

/*2 - Crie uma fun��o, que deve:
    Receber como par�metro um c�digo de cliente.
    Buscar o cliente na tabela SA1 com o c�digo informado.
    Exibir uma mensagem informando se o cliente foi encontrado ou n�o.*/

    /*Dicas:

    Use DbSelectArea("SA1") para selecionar a tabela.

    Use DbSeek() para buscar o cliente.*/

/*3- Adicione na fun��o criada no exercicio 2:
    Se o cliente existir, utilize Reclock() para realizar uma altera��o no registro.
    Atualizar os seguintes campos do cliente:
    A1_NOME ? "CLIENTE ALTERADO"
    A1_END ? "ENDERE�O ALTERADO"
    Liberar o registro ap�s a atualiza��o.*/

    /*Dicas:

    Use Reclock("SA1",.F.) para bloquear o registro antes da altera��o.

    Utilize MsUnlock() para liberar o registro ap�s a atualiza��o.*/

/*4- utilizando o ponto de entrada A010TOK
    Verificar se o usu�rio estiver incluindo um novo produto (INCLUI), exibir uma mensagem perguntando:
    "Confirma a inclus�o do produto [NOME_DO_PRODUTO]?"
    Se o usu�rio confirmar, a fun��o deve continuar e incluir o registro.
    Se o usu�rio recusar, a fun��o deve retornar Falso, impedindo a inclus�o.*/

    /*Dicas:

    Use AllTrim(M->B1_DESC) para exibir o nome do produto corretamente.

    Estruture a l�gica com If...EndIf.

    Retorne .T. ou .F. para indicar se a inclus�o foi permitida

    Utilize MsgYesNo() para perguntar ao usuario.*/

