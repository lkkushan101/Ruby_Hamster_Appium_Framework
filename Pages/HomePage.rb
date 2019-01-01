class HomePage


  attr_reader :driver

  def initialize(driver)
    @driver = driver

  end

  def clickMakePayment()
    @driver.find_element(:id,'com.experitest.ExperiBank:id/makePaymentButton').click()
  end
end