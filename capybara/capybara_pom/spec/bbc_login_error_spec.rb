require 'spec_helper'

describe 'Incorrect user details produces valid error' do
  before(:all) do
    @generated_data = GenerateFormData.new
    @username = @generated_data.random_username
    @password = @generated_data.create_random_password
  end

  context "It should respond with the correct error when incorrect details are input" do


    it "Should produce an error when inputting incorect password to a valid account" do
      @bbc_site = BbcSite.new
      @bbc_site.bbc_homepage.visit_home_page

      # Click sign in link
      @bbc_site.bbc_homepage.click_sign_in_link

      # Fill username on sign in page any username
      @bbc_site.bbc_sign_in_page.enter_username(@username)
      # Use your generator to fill in username

      # Fill in password on sign in pages
      # Use your generator

      # Click sign in button on sign in pages

      # Assert - error is 'Sorry, we can’t find an account with that username. If you're over 13, try your email address instead or get help here.'
    end
  end












end
