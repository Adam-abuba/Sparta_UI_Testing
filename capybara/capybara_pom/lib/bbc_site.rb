require_relative 'pages/bbc_homepage'

class BbcSite

  def bbc_homepage
    BbcHomepage.new
  end

  def sign_in_page
    BbcSignInPage.new
  end

end
