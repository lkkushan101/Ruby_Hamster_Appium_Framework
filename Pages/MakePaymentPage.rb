
class MakePayment


  attr_reader :driver

  def initialize(driver)
    @driver = driver

  end

  def setTelePhone(telephone)
    @driver.find_element(:id,'com.experitest.ExperiBank:id/phoneTextField').send_keys(telephone)
  end
  def setName(name)
    @driver.find_element(:id,'com.experitest.ExperiBank:id/nameTextField').send_keys(name)
  end
  def setCountry(country)
    @driver.find_element(:id,'com.experitest.ExperiBank:id/countryTextField').send_keys(country)
  end
end
