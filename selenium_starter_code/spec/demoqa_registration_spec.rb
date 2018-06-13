require 'spec_helper'

describe 'testing the demoqa registration page' do

  before(:all) do
    @driver = SeleniumDemoReg.new
    @driver.access_registration_form
  end

  context 'positive paths for the registration form and register' do

    it 'should land on the registration for page' do
      expect(@driver.current_url).to eq 'http://demoqa.com/registration/'
    end

    it 'should accept a first name' do
      @driver.set_first_name_field("Adam")
    end

    it 'should accept a last name' do
      @driver.set_last_name_field("Abubakari")
    end

    it 'should accept a marital status selection of Single, Married, or Divorced' do
      @driver.select_marital_option(0)
      @driver.select_marital_option(1)
      @driver.select_marital_option(2)
    end

    it 'should accept a hobby status selection of Dance, Reading, or Cricket' do
      @driver.select_hobby_option(0)
      @driver.select_hobby_option(1)
      @driver.select_hobby_option(2)
    end

    it 'should have a country default of Afghanistan' do
      expect(@driver.get_selected_country).to eq("Afghanistan")
    end

    it 'accept a new DOB' do
      @driver.dob_month_list_select('10')
      @driver.dob_day_list_select('10')
      @driver.dob_year_list_select('2001')
    end

    it 'should accept a new country value' do
      @driver.country_dropdown_list_select('Ghana')
    end

    it 'should accept a valid phone number' do
      @driver.set_phone_number_field("07500707229")
    end

    it 'should accept a username' do
      @driver.set_user_name_field("addy")
    end

    it 'should accept a about yourself text' do
      @driver.set_about_yourself_field("I am God")
    end

    it 'should accept a password' do
      @driver.set_password_field("Password123")
    end

    it 'should accept a password confirmation' do
      @driver.set_confirmation_password_field("Password123")
    end

  end

end
