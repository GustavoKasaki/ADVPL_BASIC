#Include 'Protheus.ch'

User Function XFUNAMB()
    cRet        := GetRemoteIniName() // Retorna o nome de configura��o remote do arquivo .ini
    cRet2       := GetEnvServer() // Retorna o ambiente conectado
    cRet3       := GetTheme() // Retorna o tema do ambiente
    cRet4       := GetDBExtention() // Retorna a extens�o do arquivo do banco de dados (DBF, DTC, ...)
    cRet5       := conout('mensagem') // Imprime uma mensagem no console do AppServer
    cRet6       := OrdBagExt() // Retorna a extens�o do �ndice (CDX, IDX, NTX, ...)
    cRet7       := Funname(/* n */) // Retorna o nome do fonte que executa a fun��o na pilha, onde 'n' � a posi��o na pilha

Return
