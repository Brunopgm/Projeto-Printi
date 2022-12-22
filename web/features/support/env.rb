#aqui sera importanto as depencias que serão utilizadas em todo o projeto
#e nao em apenas uma class especifica
require "capybara"
require "capybara/cucumber"
require "faker"
require "allure-cucumber"
require "prawn"

CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/#{ENV["CONFIG"]}"))

case ENV["BROWSER"]
when "chrome"
  @driver = :selenium_chrome
when "chrome_headless"
  @driver = :selenium_chrome_headless
when "firefox"
  @driver = :selenium
when "fire_headless"
  @driver = :selenium_headless 
else
  log "browser invalido"
end


#bloco de configuracao do capibara. assim o capibara conversa com o cucumber e com o browser
Capybara.configure do |config|
  config.default_driver = @driver 
  config.app_host = CONFIG["url"] # a url vem do arquivo local.yml
  config.default_max_wait_time = 10
end
