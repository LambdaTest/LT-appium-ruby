require 'rubygems'
require 'appium_lib'

username= ENV["LT_USERNAME"] || "LT_Username" #Enter your username here
accessToken= ENV["LT_ACCESS_KEY"] || "LT_AccessKey" #Enter your Access Key here

caps = {     
    "lt:options" => {      
        :deviceName => "Pixel 6",  
        :platformName => "Android",
        :platformVersion => "13",
        :build => "Ruby Vanilla - Android",
        :name => "Ruby Android Test",
        :isRealMobile => true,
        :queueTimeout => 300,
        :app => "lt://proverbial-android", #Enter the App URL here
        :w3c => true
    },
    :platformName => "Android"
}

appium_driver = Appium::Driver.new({
    'caps' => caps,
    'appium_lib' => {
        :server_url => "https://"+username+":"+accessToken+"@mobile-hub.lambdatest.com/wd/hub"
    }},true)

    driver = appium_driver.start_driver

    wait = Selenium::WebDriver::Wait.new(:timeout => 30)
    el1 = driver.find_element(:id, "com.lambdatest.proverbial:id/color")
    el1.click
    el2 = driver.find_element(:id, "com.lambdatest.proverbial:id/geoLocation")
    el2.click
    sleep(5)
    driver.back
    el3 = driver.find_element(:id, "com.lambdatest.proverbial:id/Text")
    el3.click
    el4 = driver.find_element(:id, "com.lambdatest.proverbial:id/notification")
    el4.click
    el5 = driver.find_element(:id, "com.lambdatest.proverbial:id/toast")
    el5.click
    el6 = driver.find_element(:id, "com.lambdatest.proverbial:id/speedTest")
    el6.click
    sleep(10)
    driver.back
    
    puts "Found results - Test Passed"

    
    driver.quit
