Dado('que acesso o google e pesquiso pelo {string}') do |texto|
    @google_page.abrir_google
    @screen.print("Tela do google")
    @google_page.pesquisar_texto(texto)
end

Dado('entro no primeiro link não patrocinado') do
    @screen.print("Entrar no link")
    @google_page.clicar_link_da_print
end

Quando('pesquiso o produto {string}') do |produto|
    @screen.print("Pesquisar produto")
    @pesquisa.busca_produto(produto)
end

Quando('seleciono o produto pesquisado') do
    @screen.print("Selecionar produto")
    @pesquisa.seleciona_primeiro_prod
end

Então('devo visualizar o produto {string} selecionado') do |produto|
    produto_selecionado = @pesquisa.produto_selecionado
    expect(produto_selecionado).to eql produto
    @screen.print("Validar produto")
end