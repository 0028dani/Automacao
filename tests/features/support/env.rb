#require 'capybara/cucumber'

require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)

Capybara.configure do |config|
    #selenium   selenium_chrome  selenium_chrome_healess
    config.default_driver = :selenium_chrome
    config.app_host = 'https://hm.techcargo.com.br/PortalEmpresario/'
    config.default_max_wait_time = 5

end