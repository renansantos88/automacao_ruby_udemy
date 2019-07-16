#resetar a sessão 
require 'capybara/cucumber'
#não reseta a sessão serve para cenários end-to-end
#require 'capybara'
#require 'capybara/dsl'
#require 'capybara/rspec/matchers'

# até aqui - não reseta a sessão 
require 'selenium-webdriver'
#mais esses dois - não reseta a sessão 
#World(Capybara::DSL)
#World(Capybara::RSpecMatchers)

Capybara.configure do |config|
    #selenium selenium_chrome selenium_chrome_healess
    config.default_driver = :selenium_chrome
    config.app_host = 'https://automacaocombatista.herokuapp.com'
    config.default_max_wait_time = 5
end
