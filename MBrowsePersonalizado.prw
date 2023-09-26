#Include 'TOTVS.CH'
#include 'parmtype.ch'
/*/{Protheus.doc} User Function fAxCCli
    Funcao utilizada para montar a tela padrao da mbrowse, onde traz a tela de cadastro de Clients SA1, com botoes personalizados
    @type  Function
    @author Scheron Martins
    @since 25/09/2023
    @version 1.0
    @param Nenhum
    @return Vazio (nil)
    @example Exemplo da utilizacao da Tela MBrowse
        @see : MBrowse               https://tdn.totvs.com/pages/releaseview.action?pageId=24346981
               Banco de Dados        https://tdn.totvs.com/display/tec/Banco+de+Dados
/*/

User Function fAxCCli()
Local cAlias := 'SA1'
Private aRotina := {}
	
aAdd(aRotina,{"Inicio"                       ,"U_fInicio"		,0,3})
aAdd(aRotina,{"Fim"	                         ,"U_fFim"		    ,0,3})
aAdd(aRotina,{"Próximo registro*"            ,"U_fProx"		    ,0,3})
aAdd(aRotina,{"Registro Anterior*"           ,"U_fRegAnt"		,0,1})
aAdd(aRotina,{"Total de Registros*"          ,"U_fTotReg"		,0,1})
aAdd(aRotina,{"Num. Registro Atual"          ,"U_fRegAtual"		,0,1})
aAdd(aRotina,{"Muda a ordem dos Registros"   ,"U_fMudaOrd"		,0,1})

dbSelectArea(cAlias)
dbSetOrder(1)
mBrowse(/*nLinha1*/,/*nColuna1*/,/*nLinha2*/,/*nColuna2*/,cAlias)
Return

//Posiciona no próximo Registro
User Function fProx()   
SA1->(DbSkip(1))
Return

//Posiciona no Registro Anterior
User Function fRegAnt() //problema
SA1->(DbSkip(-1)) 
Return

//Mostra o Registro Atual
User Function fRegAtual()
MsgAlert("Voce esta no registro " + SA1->A1_COD)
Return

//Muda a Ordenação da Tabela
User Function fMudaOrd()   
SA1->(DbSetOrder(2))
Return

//Posiciona no primeiro Registro da Tabela cfme Ordenação 
User Function fInicio()   
SA1->(DbGoTop())
MsgAlert("Inicio do Arquivo") 
Return

//Posiciona no último Registro da Tabela cfme Ordenação 
User Function fFim()  //Problema
SA1->(DBGoBottom())
MsgAlert("Fim do Arquivo")
Return

//Mostra a Quantidade total de Registros na tabela 
User Function fTotReg()
    Local aArea := GetArea()
    Local nTotal := 0
    
    DbSelectArea(SA1)
    SA1->(DbGoTop())
    
    // Loop para contar os registros
    Do While !SA1->(Eof())
        nTotal++
        SA1->(DbSkip(1))
    EndDo
    
    MsgInfo("Total de Registros: "+cValToChar(nTotal), "Atenção")
    
    RestArea(aArea)
Return
