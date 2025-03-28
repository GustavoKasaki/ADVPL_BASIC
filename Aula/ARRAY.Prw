#Include "Protheus.ch"

User Function ALARRAY()
    Local aArray    := {"Bruno","Lucas","Juliano","Marcos","Elaine"}
    Local aIdade    := {25,22,27,35,23}
    Local aArray2   := {{"Bruno"    ,25},;
                        {"Lucas"    ,22},;
                        {"Juliano"  ,27},;
                        {"Marcos"   ,35},;
                        {"Elaine"   ,23}}
    Local aNArray   :={,}

    aNArray[1]  := "Gustavo"
    aNArray[2]  := 30

    MsgInfo(Valtype(aNArray[1]))
    //MsgInfo(aArray[5] + " " + Cvaltochar(aIdade[5]))

    MsgInfo(aArray2[1,1] + " " +Cvaltochar(aArray2[1][2]))
Return

User Function ALFAR()
    Local aArray    := Array(10)
    Local aAdd      := {}
    Local aClone
    Local aArray2   := {{"Bruno"    ,25},;
                        {"Lucas"    ,22},;
                        {"Juliano"  ,27},;
                        {"Marcos"   ,35},;
                        {"Elaine"   ,23}} 

    aAdd(aAdd,"Elton")
    aAdd(aAdd,"Camilo")
    aAdd(aAdd,{"Camilo",35,})

    aClone := aClone(aAdd)
    aDel   := aClone(aAdd)
    
    aDel(aDel,1)
    aSize(aDel,2)

    aCopy(aAdd,aArray,1,2,3)

    aFill(aArray,"Laryssa",1,2)
    aFill(aArray,"Marcus",10)

    aIns(aArray,2)

    nEleme := aScan(aArray,"Camilo")

    ASort(aArray2, , , {|x,y| x[2] < y[2]})
    ATail(aArray)
Return
