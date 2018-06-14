require 'selenium-webdriver'

class SeleniumQaToolsForm

  def initialize
    @chrome_driver = Selenium::WebDriver.for :chrome
    @practice_form_url = 'http://toolsqa.com/automation-practice-form'
    @firstname_field = 'firstname'
    @lastname_field = 'lastname'
    @sex_checkbox = 'sex'
    @six_experience_checkbox = 'exp-6'
    @date_field = 'datepicker'
    @proffesion = 'profession-1'
    @tool = 'tool-2'
    @continent_button = 'continents'
    @continent_options = 'option'
  end

  def visit_practice_form
    @chrome_driver.get(@practice_form_url)

  end

  def input_firstname_field(text)
    @chrome_driver.find_element(:name, @firstname_field).send_keys(text)
  end

  def input_lastname_field(text)
    @chrome_driver.find_element(:name, @lastname_field).send_keys(text)
  end

  def input_sex_checkbox
    @chrome_driver.find_element(:name, @sex_checkbox).click
  end

  def input_experience_checkbox
    @chrome_driver.find_element(:id, @six_experience_checkbox).click
  end

  def input_date_field(text)
    @chrome_driver.find_element(:id, @date_field).send_keys(text)
  end

  def select_proffesion
    @chrome_driver.find_element(:id, @proffesion).click
  end

  def select_tool
    @chrome_driver.find_element(:id, @tool).click
  end
end
testing = SeleniumQaToolsForm.new
testing.visit_practice_form
testing.input_firstname_field("Just random test")
testing.input_lastname_field("SEcond name Here")
testing.input_sex_checkbox
testing.input_experience_checkbox
testing.input_date_field("12th June 2018")
testing.select_proffesion
testing.select_tool
