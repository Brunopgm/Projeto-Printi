Before do
  @google_page = GooglePage.new
  @screen = Screenshot.new
  @pdf = GeradorPDF.new
  @pesquisa = Pesquisa.new

  page.current_window.resize_to(1440, 900)
  
  @screen.directory_exists
  @screen.pasta_numero_execucao
end

After do
  @pdf.gerar_pdf(@screen.retorno_numero_execucao.split("/")[-1], 
                 @screen.retorno_lista_arquivos, 
                 @screen.directory_exists.split("/")[-1])

  @screen.expurgar_dados
end