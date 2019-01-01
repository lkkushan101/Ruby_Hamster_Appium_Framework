
class LoginPage

  userName        =  'com.experitest.ExperiBank:id/usernameTextField'


  attr_reader :driver

    def initialize(driver)
      @driver = driver

    end

    def setUserName(user_name)
      @driver.find_element(:id,'com.experitest.ExperiBank:id/usernameTextField').send_keys(user_name)
    end
    def setPassword(passwords)
      @driver.find_element(:id,'com.experitest.ExperiBank:id/passwordTextField').send_keys(passwords)
    end
  def clickLogin()
    @driver.find_element(:id,'com.experitest.ExperiBank:id/loginButton').click()
  end
  end
