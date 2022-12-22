class Screenshot
  include Capybara::DSL
  $path_imagens = Dir.pwd + "/target/relatorios/"

  def directory_exists
    t = Time.now
    tempD = t.strftime("%d-%m-%Y")
    path = $path_imagens + tempD
    if File.directory?(path) == false
      Dir.mkdir(path)  
    end
    return path
  end

  def pasta_numero_execucao
    Dir.mkdir(directory_exists + "/#{Dir[directory_exists + "/*"].length}")
  end

  def retorno_numero_execucao
    return (directory_exists + "/#{Dir[directory_exists + "/*"].length - 1}")
  end

  def print(namePhoto)   
    nome_arquivo = "#{Dir[retorno_numero_execucao + "/*"].length}_#{namePhoto}"
    page.save_screenshot("#{retorno_numero_execucao}/#{nome_arquivo}.png")
  end

  def retorno_lista_arquivos
    return Dir[retorno_numero_execucao + "/*"]
  end

  def expurgar_dados
    for item in Dir[retorno_numero_execucao + "/*.png"]
      FileUtils.rm_rf(item)
    end
  end

end