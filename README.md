# Ruby With Appium — TestMu AI (Formerly LambdaTest)
![pw](https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white)

<p align="center">
<img height="500" src="https://user-images.githubusercontent.com/95698164/171857146-90e52e22-0070-4798-b2a5-6cc525a4da66.png">
</p>

<p align="center">
  <a href="https://www.testmuai.com/blog/?utm_source=github&utm_medium=repo&utm_campaign=LT-appium-ruby" target="_bank">Blog</a>
  &nbsp; &#8901; &nbsp;
  <a href="https://www.testmuai.com/support/docs/?utm_source=github&utm_medium=repo&utm_campaign=LT-appium-ruby" target="_bank">Docs</a>
  &nbsp; &#8901; &nbsp;
  <a href="https://www.testmuai.com/learning-hub/?utm_source=github&utm_medium=repo&utm_campaign=LT-appium-ruby" target="_bank">Learning Hub</a>
  &nbsp; &#8901; &nbsp;
  <a href="https://www.testmuai.com/newsletter/?utm_source=github&utm_medium=repo&utm_campaign=LT-appium-ruby" target="_bank">Newsletter</a>
  &nbsp; &#8901; &nbsp;
  <a href="https://www.testmuai.com/certifications/?utm_source=github&utm_medium=repo&utm_campaign=LT-appium-ruby" target="_bank">Certifications</a>
  &nbsp; &#8901; &nbsp;
  <a href="https://www.youtube.com/@TestMuAI" target="_bank">YouTube</a>
</p>
&emsp;
&emsp;
&emsp;

*Appium is a tool for automating native, mobile web, and hybrid applications on iOS, Android, and Windows platforms. It supports iOS native apps written in Objective-C or Swift and Android native apps written in Java or Kotlin. It also supports mobile web apps accessed using a mobile browser (Appium supports Safari on iOS and Chrome or the built-in 'Browser' app on Android). Perform Appium automation tests on [TestMu AI's online cloud](https://www.testmuai.com/appium-mobile-testing).*

*Learn the basics of [Appium testing on the TestMu AI platform](https://www.testmuai.com/support/docs/getting-started-with-appium-testing/).*

[<img height="53" width="200" src="https://user-images.githubusercontent.com/70570645/171866795-52c11b49-0728-4229-b073-4b704209ddde.png">](https://accounts.lambdatest.com/register)

## Table of Contents

* [Pre-requisites](#pre-requisites)
* [Run Your First Test](#run-your-first-test)
* [Executing The Tests](#executing-the-tests)

## Pre-requisites

Before you can start performing Ruby automation testing with Appium, you would need to:

- Install **Ruby** on your local system. Follow these instructions to install on different operating systems.

  - For **Windows**, you can download from the [official website](https://rubyinstaller.org/downloads/).
  - For **Linux** or **Ubuntu**, you can run a simple apt command like below:

    ```bash
    sudo apt-get install ruby-full
    ```

  - For **macOS**, you can run a [Homebrew](https://brew.sh/) command like this:

    ```bash
    brew install ruby
    ```


### Clone The Sample Project

Clone the TestMu AI’s [LT_Ruby_Appium](https://github.com/LambdaTest/LT_Ruby_Appium) and navigate to the code directory as shown below:

```bash
git clone https://github.com/LambdaTest/LT_Ruby_Appium
cd LT_Ruby_Appium
```

### Setting Up Your Authentication

Make sure you have your TestMu AI credentials with you to run test automation scripts on LambdaTest. To obtain your access credentials, [purchase a plan](https://billing.lambdatest.com/billing/plans) or access the [Automation Dashboard](https://appautomation.lambdatest.com/).

Set TestMu AI `Username` and `Access Key` in environment variables.

**For Linux/macOS:**

```js
export LT_USERNAME=YOUR_LAMBDATEST_USERNAME \
export LT_ACCESS_KEY=YOUR_LAMBDATEST_ACCESS_KEY
```
 
**For Windows:**
 
```js
set LT_USERNAME=YOUR_LAMBDATEST_USERNAME `
set LT_ACCESS_KEY=YOUR_LAMBDATEST_ACCESS_KEY
```
  
### Upload Your Application

Upload your **_iOS_** application (.ipa file) or **_android_** application (.apk file) to the TestMu AI servers using our **REST API**. You need to provide your **Username** and **AccessKey** in the format `Username:AccessKey` in the **cURL** command for authentication. Make sure to add the path of the **appFile** in the cURL request. Here is an example cURL request to upload your app using our REST API:

**Using App File:**

**For Linux/macOS:**

```js
curl -u "YOUR_LAMBDATEST_USERNAME:YOUR_LAMBDATEST_ACCESS_KEY" \
--location --request POST 'https://manual-api.lambdatest.com/app/upload/realDevice' \
--form 'name="Android_App"' \
--form 'appFile=@"/Users/macuser/Downloads/proverbial_android.apk"' 
```

**For Windows:**

```js
curl -u "YOUR_LAMBDATEST_USERNAME:YOUR_LAMBDATEST_ACCESS_KEY" -X POST "https://manual-api.lambdatest.com/app/upload/realDevice" -F "appFile=@"/Users/macuser/Downloads/proverbial_android.apk""
```

**Using App URL:**

**For Linux/macOS:**

```js
curl -u "YOUR_LAMBDATEST_USERNAME:YOUR_LAMBDATEST_ACCESS_KEY" \
--location --request POST 'https://manual-api.lambdatest.com/app/upload/realDevice' \
--form 'name="Android_App"' \
--form 'url="https://prod-mobile-artefacts.lambdatest.com/assets/docs/proverbial_android.apk"'
```

**For Windows:**

```js
curl -u "YOUR_LAMBDATEST_USERNAME:YOUR_LAMBDATEST_ACCESS_KEY" -X POST "https://manual-api.lambdatest.com/app/upload/realDevice" -d "{"url":"https://prod-mobile-artefacts.lambdatest.com/assets/docs/proverbial_android.apk","name":"sample.apk"}"
```

**Tip:**

- If you do not have any **.apk** or **.ipa** file, you can run your sample tests on TestMu AI by using our sample :link: [Android app](https://prod-mobile-artefacts.lambdatest.com/assets/docs/proverbial_android.apk) or sample :link: [iOS app](https://prod-mobile-artefacts.lambdatest.com/assets/docs/proverbial_ios.ipa).
- Response of above cURL will be a **JSON** object containing the `App URL` of the format - <lt://APP123456789123456789> and will be used in the next step.

## Run Your First Test

Once you are done with the above-mentioned steps, you can initiate your first Ruby test on LambdaTest.

**Test Scenario:** Check out [Android.rb](https://github.com/LambdaTest/LT-appium-ruby/blob/master/android/android-sample.rb) file to view the sample test script for android and [iOS.rb](https://github.com/LambdaTest/LT-appium-ruby/blob/master/ios/ios-sample.rb) for iOS.

### Configuring Your Test Capabilities

You can update your custom capabilities in test scripts. In this sample project, we are passing platform name, platform version, device name and app url (generated earlier) along with other capabilities like build name and test name via capabilities object. The capabilities object in the sample code are defined as:

**Info Note:**

- In case you're using the Capabilities using the JSON Wire Protocol, then please use appium_lib version 10.6.0 and below.
- Install it using ```gem install appium_lib -v 10.6.0``` command.

<Tabs className="docs__val">

<TabItem value="ios-config" label="iOS" default>

```ruby title="iOS(.ipa)"
 caps = {
            "LT:Options" => {
                :deviceName => "iPhone 13 Pro",  
                :platformName => "iOS",
                :platformVersion => "15",
                :build => "Ruby Vanilla - iOS",
                :name => "Ruby iOS Test",
                :isRealMobile => true,
                :app => "YOUR_APP_URL", #Enter the App (.ipa) URL here
                :w3c => true,
        } }
```

</TabItem>
<TabItem value="android-config" label="Android" default>

```ruby title="Android(.apk)"
caps = {
            "LT:Options" => {
            :deviceName => "OnePlus 7",  
            :platformName => "Android",
            :platformVersion => "9",
            :build => "Ruby Vanilla - Android",
            :name => "Ruby Android Test",
            :isRealMobile => true,
            :app => "YOUR_APP_URL", #Enter the App (.apk) URL here
            :w3c => true,
        } }
```

</TabItem>

</Tabs>

**Info Note:**

- You must add the generated **APP_URL** to the `"app"` capability in the config file.
- You can generate capabilities for your test requirements with the help of our inbuilt **[Capabilities Generator tool](https://www.testmuai.com/capabilities-generator/)**. A more Detailed Capability Guide is available [here](https://www.testmuai.com/support/docs/desired-capabilities-in-appium/).

## Executing The Tests

<Tabs className="docs__val">

<TabItem value="ios" label="iOS" default>

If you are using an **iOS** app, the cURL command will generate an app URL for the corresponding iOS app and install the same for running the tests. You can either use our sample :link: [iOS app](https://prod-mobile-artefacts.lambdatest.com/assets/docs/proverbial_ios.ipa) or upload your own app as discussed earlier.

Navigate to the corresponding directory based on your app.

```bash
cd ios
```

Execute the following command to run your test on TestMu AI platform:

```bash
ruby ios-sample.rb
```

</TabItem>

<TabItem value="android" label="Android" default>

If you are using an **android** app, the cURL command will generate an app URL for the corresponding Android app and install the same for running the tests. You can either use our sample :link: [Android app](https://prod-mobile-artefacts.lambdatest.com/assets/docs/proverbial_android.apk) or upload your own app as discussed earlier.

Navigate to the corresponding directory based on your app.

```bash
cd android
```

Execute the following command to run your test on TestMu AI platform:

```bash
ruby android-sample.rb
```

</TabItem>

</Tabs>

**Info Note**
In case of Windows, if you get any error message. Please try this method:

1. Navigate to the corresponding directory based on your app.

```bash
cd android
```
2. Refresh the gem bundles through given command

```bash
gem uninstall -aIx
```
3. Re-install the gems required

```bash
gem install appium_lib -v 10.6.0
gem install ffi
```
4. Now try running the corresponding automation script for your app.

```bash
ruby android-sample.rb
```

**Info:** Your test results would be displayed on the test console (or command-line interface if you are using terminal/cmd) and on the :link: [TestMu AI App Automation Dashboard](https://appautomation.lambdatest.com/build).

### Troubleshooting

If you encounter an issue where the gem installation fails with an error like `No such file or directory @ rb_sysopen`, you can resolve it by creating the required directory, setting up a custom gem path, or installing with administrator privileges.

#### Option 1: Create the Missing Directory

**macOS/Linux:**  
Run the following command to create the required directory structure:
```bash
mkdir -p ~/.local/share/gem/ruby/<ruby_version>/cache
```
**Windows:**
```bash
mkdir -p %USERPROFILE%\.gem\ruby\<ruby version>\cache
```
#### Option 2: Set a Custom GEM Path
**macOS/Linux:**
```bash
export GEM_HOME=$HOME/gems
export PATH=$HOME/gems/bin:$PATH
gem install appium_lib -v 10.6.0
```
**Windows:**
```bash
set GEM_HOME=%USERPROFILE%\gems
set PATH=%USERPROFILE%\gems\bin;%PATH%
gem install appium_lib -v 10.6.0
```
#### Option 3: Install with Administrator Privileges
**macOS/Linux:**
```bash
sudo gem install appium_lib -v 10.6.0
```
**Windows:**
Run Command Prompt as Administrator, then:
```bash
gem install appium_lib -v 10.6.0
``` 

## Additional Links

- [Advanced Configuration for Capabilities](https://www.testmuai.com/support/docs/desired-capabilities-in-appium/)
- [How to test locally hosted apps](https://www.testmuai.com/support/docs/testing-locally-hosted-pages/)
- [How to integrate TestMu AI with CI/CD](https://www.testmuai.com/support/docs/integrations-with-ci-cd-tools/)

## Documentation & Resources :books:
      
Visit the following links to learn more about TestMu AI's features, setup and tutorials around test automation, mobile app testing, responsive testing, and manual testing.

* [TestMu AI Documentation](https://www.testmuai.com/support/docs/?utm_source=github&utm_medium=repo&utm_campaign=LT-appium-ruby)
* [TestMu AI Blog](https://www.testmuai.com/blog/?utm_source=github&utm_medium=repo&utm_campaign=LT-appium-ruby)
* [TestMu AI Learning Hub](https://www.testmuai.com/learning-hub/?utm_source=github&utm_medium=repo&utm_campaign=LT-appium-ruby)    

## TestMu AI Community :busts_in_silhouette:

The [TestMu AI Community](https://community.testmuai.com/) allows people to interact with tech enthusiasts. Connect, ask questions, and learn from tech-savvy people. Discuss best practises in web development, testing, and DevOps with professionals from across the globe 🌎

## What's New At TestMu AI ❓

To stay updated with the latest features and product add-ons, visit [Changelog](https://changelog.lambdatest.com/)

## 🚀 [LambdaTest is Now TestMu AI](https://www.testmuai.com/lambdatest-is-now-testmuai/)

👋 Welcome to TestMu AI, the next evolution of LambdaTest. As of January 2026, LambdaTest has officially rebranded to TestMu AI. We have evolved from a cross-browser testing cloud into a unified, AI-native quality engineering platform designed for the modern DevOps era.

Whether you have been part of the LambdaTest community for years or are just discovering TestMu AI, our mission remains the same: to help you ship faster with high-scale test execution, autonomous testing, and deep quality analytics.

**🔄 Our Rebrand Journey**

We chose the name TestMu AI to reflect our shift towards intelligent, autonomous testing. While our identity has changed, our core technology and commitment to the testing community stay the same.

**✨ Specialties**

- 🤖 AI-Native Test Execution (Formerly LambdaTest)
- ⚡ Autonomous Test Automation
- 🌐 Cross-Browser & Mobile Testing
- 📊 Unified Quality Intelligence

👉 Find [LambdaTest's New Home](https://www.testmuai.com/).