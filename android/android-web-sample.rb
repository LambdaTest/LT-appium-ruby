require 'rubygems'
require 'appium_lib'
require 'selenium-webdriver'

username= ENV["LT_USERNAME"] || "LT_Username" #Enter your username here
accessToken= ENV["LT_ACCESS_KEY"] || "LT_AccessKey" #Enter your Access Key here

caps = {     
    "lt:options" => {      
        :deviceName => "OnePlus .*",
        :platformName => "Android",
        :platformVersion => "11",
        :build => "Ruby Vanilla - Android",
        :name => "Ruby Android Test",
        :isRealMobile => true,
        :queueTimeout => 300,
        :w3c => true
    },
    :platformName => "Android"
}

driver = Selenium::WebDriver.for :remote,
            :url => "https://"+username+":"+accessToken+"@mobile-hub.lambdatest.com/wd/hub",
            :desired_capabilities => caps

    wait = Selenium::WebDriver::Wait.new(:timeout => 30)
    driver.navigate.to("https://mfml.in/api/getInfo")
    el1 = driver.find_element(:id => "resolution")
    el1.click
    el2 = driver.find_element(:id => "location")
    el2.click
    sleep(5)
    el3 = driver.find_element(:id => "details")
    el3.click
    el4 = driver.find_element(:id => "timezone")
    el4.click
    
    puts "Found results - Test Passed"
    driver.quit
