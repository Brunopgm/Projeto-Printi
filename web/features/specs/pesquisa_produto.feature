#language: pt
    Funcionalidade: Pesquisa produto
        Sendo um usuário 
        Quero pesquisar produtos no site da Printi
        Para que eu possa adquirir produtos personalizados

    @buscar_produto
    Esquema do Cenario: Pesquisar produto no site da Printi
        Dado que acesso o google e pesquiso pelo "<texto>"
        E entro no primeiro link não patrocinado
        Quando pesquiso o produto "<produto>"
        E seleciono o produto pesquisado
        Então devo visualizar o produto "<produto>" selecionado 
        Exemplos: 
            |   produto   | texto  |
            |   Caneca    | Printi |
            |   Caderno   | Printi | 