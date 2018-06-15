require 'capybara/dsl'

class BbcHomepage

 # page object
 HOMEPAGE_URL = "http://www.bbc.co.uk"
 SIGN_IN_LINK_ID = "#idcta-link"

  def initialize
    Capybara.register_driver :chrome do |app|
      Capybara::Selenium::Driver.new(app, :browser => :chrome)
    end
    @driver = Capybara::Session.new(:chrome)
  end

  def visit_home_page
    @driver.visit(HOMEPAGE_URL)
  end

  def click_sign_in_link
    @driver.find(SIGN_IN_LINK_ID).click

  end
end

bbc = BbcHomepage.new
bbc.visit_home_page
bbc.click_sign_in_link
