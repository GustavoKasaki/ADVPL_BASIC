#Include 'Protheus.ch'

User Function XFUNAMB()
    cRet        := GetRemoteIniName() // Retorna o nome de configuração remote do arquivo .ini
    cRet2       := GetEnvServer() // Retorna o ambiente conectado
    cRet3       := GetTheme() // Retorna o tema do ambiente
    cRet4       := GetDBExtention() // Retorna a extensão do arquivo do banco de dados (DBF, DTC, ...)
    cRet5       := conout('mensagem') // Imprime uma mensagem no console do AppServer
    cRet6       := OrdBagExt() // Retorna a extensão do índice (CDX, IDX, NTX, ...)
    cRet7       := Funname(/* n */) // Retorna o nome do fonte que executa a função na pilha, onde 'n' é a posição na pilha

Return
