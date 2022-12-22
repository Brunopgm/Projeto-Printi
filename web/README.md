*******
# :file_folder: Tabela de conteúdo
1. [Sobre o Projeto](#sobre)
2. [Técnologias utilizadas](#ferramentas)
3. [Pré requisitos](#requisitos)
4. [Como montar o ambiente](#ambiente)
5. [Como executar a aplicação](#execucao)
6. [Documentação](#documentacao)
7. [Autor](#autor)

*******

<div id='sobre'/>

## :file_folder: Sobre o Projeto
>*Projeto de automação web do site Printi*

*******

<div id='ferramentas'/>

## 🛠 Técnologias utilizadas
- Linguagem: Ruby;
- Plataforma: Windows;
- IDE: Visual Studio Code;
- Selenium;
- RSpec;
- Cucumber;
- Driver: ChromeDriver;
- CMDER;
*******

<div id='ambiente'/>

## :file_folder: Como montar o ambiente

> - ### Instalar Visual Studio Code e CMDER

> - ### Ruby -> [Download do Ruby (baixar a versão com DevKit) e guia de instalação](https://www.ruby-lang.org/pt/)

 ### ChromeDriver -> [Download do ChromeDriver](https://chromedriver.chromium.org/downloads).
#### OBS: Verificar a versão do seu Chrome antes de baixar o ChromeDriver. Para isso siga os passos a seguir:

> - Abrir o brownser do Google Chrome;
> - Clicar nos 3 pontos no menu superior direito;
> - Ir na opção de Ajuda;
> - Cliar em Sobre o Google Chrome;
> - Na tela irá ter um quadro branco com o título Google Chrome e sua versão abaixo.
> ex: O Google Chrome está atualizado Versão 89.0.4389.90 (Versão oficial) 64 bits
> - Assim, seguindo este ex você deve baixar a versão 89 do ChromeDriver;

#### Adicionar o caminho do ChromeDriver nas variáveis de ambiente
> - Após baixar o ChromeDriver, criar uma pasta no diretório C: chamada ChromeDriver e colocar o arquivo descompactado nela;
> - Na barra de pesquisas do windows digitar var e clicar em Editar as variáveis de ambiente do sistema;
> - Na janela que está aberta, clicar em variáveis de ambiente;
> - Em variáveis de sistema encontrar a variável path e clicar duas vezes nela;
> - No canto superior direito clicar no botão Novo;
> - Adicionar o caminho para a pasta onde esta o arquivo do ChromeDriver.
> Obs: Caso tenha seguido os passos acima o caminho será: C:\ChromeDriver;
> - Clicar em OK até fechar todas as janelas;

*******

<div id='execucao'/>

## :file_folder: Como executar a aplicação
> - Vá para o repositório https://github.com/Brunopgm/Projeto-Printi.git e dê um clone no projeto

> - Abra o Cmder e execute o comando "gem install bundler" para instalar o bundler 

> - Em seguida o comando "bundle install" para instalar as dependências do projeto

> - Finalmente, para a execução basta digitar o comando:
    - cucumber caminho/arquivo.feature
    
    Ex: cucumber features/specs/compra_veiculo.feature

> - É possível ver evidências em PDF no diretório /target

*******

<div id='documentacao'/>

## :file_folder: Documentação

> - :blue_book: : [Documentação RubyGems](https://rubygems.org/).
> - :blue_book: : [Documentação Ruby](https://www.ruby-lang.org/pt/documentation/).
> - :blue_book: : [Documentação RSPec](https://rspec.info/documentation/).
> - :blue_book: : [Documentação Selenium](https://www.rubydoc.info/gems/selenium-webdriver/0.0.28/Selenium/WebDriver/Driver).
> - :blue_book: : [Documentação Cucumber](https://cucumber.io/docs/cucumber/).

*******

<div id='autor'/>

## :bust_in_silhouette: Autor
:computer: Bruno Brito Silva: [Linkedin](https://www.linkedin.com/in/bruno-silva-ti/).
<br/>
:telephone_receiver: +55 (11) 96104-4523
*******
