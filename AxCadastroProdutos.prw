#Include 'TOTVS.CH'

/*/{Protheus.doc} User Function fAxCadPr
    Funcao utilizada para montar a tela padrao da mbrowse, onde traz a tela de cadastro de Produtos SB1
    @type  Function
    @author Scheron Martins
    @since 25/09/2023
    @version 1.0
    @param Nenhum
    @return Vazio (nil)
    @example Exemplo da utilizacao da Tela AXCadastro
        @see : AxCadastro https://tdn.totvs.com/display/public/framework/AxCadastro
/*/
User Function fAxCadPr()

AxCadastro("SB1", "Cadastro de Produtos")  

Return
