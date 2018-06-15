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
      @bbc_site.bbc_homepage.click_sign_in_link
      @bbc_site.sign_in_page.enter_username(@username)
      @bbc_site.sign_in_page.enter_password(@password)
      @bbc_site.sign_in_page.check_for_error_message
    end
  end
end
