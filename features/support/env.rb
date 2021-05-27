require 'rspac'
require 'capybara'
require 'site_prism'
require 'cucumber'
require 'selenium-webdriver'

Capybara.register_driver :site_prism do |app|
    Capybara::Selenium::Driver.new(app, browser: :remote, :url => 'http://localhost:4444/wd/hud', :desired_capablities => :chrome)
end 

Capybara.configure do |config|
    config.run_server = false
    Capybara.default_driver = :site_prism
    Capybara.page.driver.broser.manage.window.maximize
    config.defult_max_wait_time = 10
    config.app_host = 'http://www.automationpractice.com.index.php'
end      