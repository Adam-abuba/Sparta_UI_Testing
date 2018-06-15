require 'capybara'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

# Create session

session = Capybara::Session.new(:chrome)

# Page actions
session.visit('http://toolsqa.com/automation-practice-form')

# Filling in

session.fill_in 'firstname', with: 'test'

session.choose 'exp-6'

session.select 'Europe', from: 'continents'

# clicking a
session.click_button 'submit'

# fining a button on the page
session.find_button('Button')

session.find(:css, '#NestedText')

sleep 2
