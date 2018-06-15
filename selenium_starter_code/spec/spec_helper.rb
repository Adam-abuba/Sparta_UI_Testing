require 'selenium-webdriver'
require_relative '../selenium_demoqa_registration'
require_relative '../lib/generator/faker_data_generator.rb'

RSpec.configure do |config|
  config.formatter = :documentation
end
