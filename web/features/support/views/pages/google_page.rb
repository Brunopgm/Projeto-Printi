class GooglePage
    include Capybara::DSL
  
    def abrir_google
        visit "/"
    end

    def pesquisar_texto(texto)
        find("input[title='Pesquisar']").set texto
        find(:xpath, "//form[@action='/search']").click
        find(:xpath, "//input[@value='Pesquisa Google'][1]").click
    end
   
    def clicar_link_da_print
        find(:xpath, "//h3[text()='Printi. | Mais que uma Gráfica Online']").click
    end
end