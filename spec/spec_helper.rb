require 'rspec'
require 'capybara/rspec'

Capybara.current_driver = :selenium
Capybara.app_host = 'http://github.com'
Capybara.run_server = false
