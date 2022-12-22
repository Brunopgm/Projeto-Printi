class Pesquisa
    include Capybara::DSL
    def busca_produto(produto)
        find("#input-search-page").set produto
        click_button "Buscar"
        sleep 1
    end

    def seleciona_primeiro_prod
        find("a[data-insights-position='1']").click
    end

    def produto_selecionado
        return find("h1[itemprop='name']").text
    end
end