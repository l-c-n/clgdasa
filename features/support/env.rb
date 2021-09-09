require "capybara"
require "capybara/cucumber"

case ENV["BROWSER"]
when "firefox"
    @driver = :selenium
when "chrome"
    @driver = :selenium_chrome
when "fire_headless"
    @driver = :selenium_headless
when "chrome_headless"
    @driver = :selenium_chrome_headless
else 
    log "Navegador desconhecido!"    
    

Capybara.configure do |config|
    config.defult_driver = @driver
end