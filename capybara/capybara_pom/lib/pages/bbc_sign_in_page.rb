require 'capybara/dsl'

class BbcSignInPage

# Page constants
USERNAME_FIELD = 'user-identifier-input'
PASSWORD_FIELD = 'password-input'

def enter_username(username)
  session.fill_in USERNAME_FIELD, with: username
end

end
