require 'rubygems'
require 'appium_lib'
require_relative './Pages/LoginPage'
require_relative './Pages/HomePage'
require_relative './Pages/MakePaymentPage'
require_relative './Utility/excelReader'
require_relative './report'
desired_caps = {
    caps:  {
        platformName:  'Android',
        deviceName:    'AVY9KA9631900412',

        app: 'com.experitest.ExperiBank',
        appActivity: '.LoginActivity'
    }
}

@appium_driver = Appium::Driver.new(desired_caps)
@appium_driver.start_driver
create_report
insert_head_title ("Report for the Ruby Appium Automation Framework - Kushan Amarasiri")
insert_reportname_date("My Test Report",$result_date )
start_table
login = LoginPage.new(@appium_driver)
login.setUserName(read_excel("./Data/data.xlsx", "Sheet1",2,1))
login.setPassword(read_excel("./Data/data.xlsx", "Sheet1",2,2))
login.clickLogin
report_row("Logged into the application","Eri Bank App","PASS", "Eri Bank App")
home = HomePage.new(@appium_driver)
home.clickMakePayment
makePayment = MakePayment.new(@appium_driver)
makePayment.setTelePhone(read_excel("./Data/data.xlsx", "Sheet1",2,3))
makePayment.setName(read_excel("./Data/data.xlsx", "Sheet1",2,4))
makePayment.setCountry(read_excel("./Data/data.xlsx", "Sheet1",2,5))
report_row("Made Payment","Eri Bank App","PASS", "Eri Bank App")
close_table