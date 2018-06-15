require 'spec_helper'

describe 'testing the demoqa registration page' do

  before(:all) do
    @driver = SeleniumDemoReg.new
    @driver.access_registration_form
    @generated_data = GenerateFormData.new
    @first_name = @generated_data.random_first_name
    @last_name = @generated_data.random_last_name
    @martial_status = @generated_data.random_martial_status
    @hobby = @generated_data.random_hobby
    @country = @generated_data.random_country_pick
    @day = @generated_data.random_day_value
    @month = @generated_data.random_month_value
    @year = @generated_data.random_year_value
    @phone = @generated_data.random_phone_number
    @username = @generated_data.random_username
    @email = @generated_data.random_email
    @about_me = @generated_data.random_about_me_data
    @password = @generated_data.create_random_password
  end

  context 'positive paths for the registration form and register' do

    it 'should land on the registration for page' do
      expect(@driver.current_url).to eq 'http://demoqa.com/registration/'
    end

    it 'should accept a first name' do
      @driver.set_first_name_field(@first_name)
    end

    it 'should accept a last name' do
      @driver.set_last_name_field(@last_name)
    end

    it 'should accept a marital status selection of Single, Married, or Divorced' do
      @driver.select_marital_option(@martial_status)
    end

    it 'should accept a hobby status selection of Dance, Reading, or Cricket' do
      @driver.select_hobby_option(@hobby)

    end

    it 'should have a country default of Afghanistan' do
      expect(@driver.get_selected_country).to eq("Afghanistan")
    end

    it 'accept a new DOB' do
      @driver.dob_month_list_select("#{@month}")
      @driver.dob_day_list_select("#{@day}")
      @driver.dob_year_list_select("#{@year}")
    end

    it 'should accept a new country value' do
      @driver.country_dropdown_list_select(@country)
    end

    it 'should accept a valid phone number' do
      @driver.set_phone_number_field("#{@phone}")
    end

    it 'should accept a username' do
      @driver.set_user_name_field(@username)
    end
    it "Should accept an email address" do
      @driver.set_email_field(@email)
    end

    it 'should accept a about yourself text' do
      @driver.set_about_yourself_field(@about_me)
    end

    it 'should accept a password' do
      @driver.set_password_field(@password)
    end

    it 'should accept a password confirmation' do
      @driver.set_confirmation_password_field(@password)
    end
    it "Should be able to click the submit button" do
      @driver.click_submit
    end
    it "Should check the registration was successful" do
      @driver.check_registration_successful
    end
  end

end
