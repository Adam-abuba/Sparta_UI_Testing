require 'capybara/dsl'

class BbcSignInPage
  include Capybara::DSL

  # Page constants
  USERNAME_FIELD = "user-identifier-input"
  PASSWORD_FIELD = "password-input"
  SUBMIT_BUTTON = "submit-button"

  def enter_username(username)
    fill_in(USERNAME_FIELD, :with => username)
  end
  def enter_password(password)
    fill_in(PASSWORD_FIELD, :with => password)
  end

  def click_submit
    click_button SUBMIT_BUTTON
  end

  def check_for_error_message
    page.has_content?("Sorry, we can’t find an account with that username. If you\'re over 13, try your email address instead or get help here.")
  end
end
