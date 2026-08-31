# Run Appium Tests with Ruby on TestMu AI (Formerly LambdaTest)

<p align="center">
  <a href="https://www.testmuai.com/"><img src="https://img.shields.io/badge/MADE%20BY%20TestMu%20AI-000000.svg?style=for-the-badge&labelColor=000" alt="Made by TestMu AI"></a>
  <a href="https://rubygems.org/gems/appium_lib"><img src="https://img.shields.io/gem/v/appium_lib.svg?style=for-the-badge&labelColor=000000" alt="appium_lib version"></a>
  <a href="https://community.testmuai.com/"><img src="https://img.shields.io/badge/Join%20the%20community-blueviolet.svg?style=for-the-badge&labelColor=000000" alt="Community"></a>
</p>

*Appium is a tool for automating native, mobile web, and hybrid applications on iOS, Android, and Windows platforms. It supports iOS native apps written in Objective-C or Swift and Android native apps written in Java or Kotlin. It also supports mobile web apps accessed using a mobile browser (Appium supports Safari on iOS and Chrome or the built-in 'Browser' app on Android). Perform Appium automation tests on [LambdaTest's online cloud](https://www.lambdatest.com/appium-mobile-testing).*

Learn the basics of [Appium testing on the LambdaTest platform](https://www.lambdatest.com/support/docs/getting-started-with-appium-testing/).

[<img height="53" width="200" src="https://user-images.githubusercontent.com/70570645/171866795-52c11b49-0728-4229-b073-4b704209ddde.png">](https://accounts.lambdatest.com/register)

## Table of Contents

* [Pre-requisites](#pre-requisites)
* [Setting Up Your Authentication](#setting-up-your-authentication)
* [Upload Your Application](#upload-your-application)
* [Run Your First Test](#run-your-first-test)
* [Executing The Tests](#executing-the-tests)
* [Troubleshooting](#troubleshooting)
* [About LambdaTest](#about-lambdatest)

---

## Pre-requisites

Before you can start performing Ruby automation testing with Appium, you would need to:

1. Install **Ruby**: Ensure you have Ruby 3.4+ installed.

   - For **Windows**, download from [RubyInstaller](https://rubyinstaller.org/downloads/).
   - For **macOS**, run `brew install ruby`.
   - For **Linux** or **Ubuntu**, you can run a simple apt command like below:
     sudo apt-get install ruby-full

2. **Clone The Sample Project**:

```bash
git clone [https://github.com/Priya2224/LT-appium-ruby.git](https://github.com/Priya2224/LT-appium-ruby.git)
cd LT-appium-ruby

```

## Setting Up Your Authentication

Make sure you have your LambdaTest credentials with you to run test automation scripts. To obtain your access credentials, purchase a plan or access the access the [App Automation Dashboard](https://appautomation.lambdatest.com/)

Set LambdaTest Username and Access Key in environment variables.

For Linux/macOS:

```bash
export LT_USERNAME=YOUR_LAMBDATEST_USERNAME
export LT_ACCESS_KEY=YOUR_LAMBDATEST_ACCESS_KEY
```

For Windows:

```bash
set LT_USERNAME=YOUR_LAMBDATEST_USERNAME
set LT_ACCESS_KEY=YOUR_LAMBDATEST_ACCESS_KEY
```

## Upload Your Application

Upload your iOS application (.ipa file) or android application (.apk file) to the LambdaTest servers using our REST API. You need to provide your Username and AccessKey in the format Username:AccessKey in the cURL command for authentication. Make sure to add the path of the appFile in the cURL request. Here is an example cURL request to upload your app using our REST API:

Using App File:

For Linux/macOS:

```bash
curl -u "YOUR_LAMBDATEST_USERNAME:YOUR_LAMBDATEST_ACCESS_KEY" \
--location --request POST 'https://manual-api.lambdatest.com/app/upload/realDevice' \
--form 'name="Android_App"' \
--form 'appFile=@"/Users/macuser/Downloads/proverbial_android.apk"'
```

For Windows:

```bash
curl -u "USER:KEY" -X POST "https://manual-api.lambdatest.com/app/upload/realDevice" -F "appFile=@"C:/path/to/proverbial_android.apk""
```

Using App URL:

For Linux/macOS:

```bash
curl -u "YOUR_LAMBDATEST_USERNAME:YOUR_LAMBDATEST_ACCESS_KEY" \
--location --request POST 'https://manual-api.lambdatest.com/app/upload/realDevice' \
--form 'name="Android_App"' \
--form 'url="https://prod-mobile-artefacts.lambdatest.com/assets/docs/proverbial_android.apk"'
```

For Windows:

## Getting Started
```bash
curl -u "YOUR_LAMBDATEST_USERNAME:YOUR_LAMBDATEST_ACCESS_KEY" -X POST "https://manual-api.lambdatest.com/app/upload/realDevice" -d "{"url":"https://prod-mobile-artefacts.lambdatest.com/assets/docs/proverbial_android.apk","name":"sample.apk"}"
```

[TestMu AI](https://www.testmuai.com/) (Formerly LambdaTest) is the world's first full-stack AI Agentic Quality Engineering platform that empowers teams to test intelligently, smarter, and ship faster. Built for scale, it offers a full-stack testing cloud with 10K+ real devices and 3,000+ browsers. With AI-native test management, MCP servers, and agent-based automation, TestMu AI supports Selenium, Appium, Playwright, and all major frameworks. 
Tip:

With TestMu AI (Formerly LambdaTest), you can run Appium tests in Ruby across real Android and iOS devices. This sample shows how to configure Ruby Appium tests to run on the TestMu AI Real Device Cloud.
1. If you do not have any .apk or .ipa file, you can run your sample tests on LambdaTest by using our sample 🔗 [Android App](https://prod-mobile-artefacts.lambdatest.com/assets/docs/proverbial_android.apk) or sample 🔗 [iOS App](https://prod-mobile-artefacts.lambdatest.com/assets/docs/proverbial_ios.ipa).
2. Response of above cURL will be a JSON object containing the App URL of the format - lt://APP123456789123456789 and will be used in the next step.

- [Sign up on TestMu AI](https://www.testmuai.com/register/) (Formerly LambdaTest).
- Follow the [TestMu AI Documentation](https://www.testmuai.com/support/docs/) for the full setup walkthrough.

### Prerequisites

- Ruby (latest stable)
- Bundler
- A TestMu AI (Formerly LambdaTest) account with your username and access key

### Setup

Clone and install dependencies:
Test Scenario: Check out [Android.rb](https://github.com/LambdaTest/LT-appium-ruby/blob/master/android/android-sample.rb) file to view the sample test script for android and [iOS.rb](https://github.com/LambdaTest/LT-appium-ruby/blob/master/ios/ios-sample.rb) for iOS.

### Configuring Your Test Capabilities (Ruby 3.4/W3C Fix)
Update the caps object in your scripts. For Ruby 3.4, keys must be Symbols.

Android Configuration

```bash
caps = {
  "lt:options" => {
    :deviceName => "Galaxy S24",
    :platformName => "Android",
    :platformVersion => "14",
    :isRealMobile => true,
    :app => "YOUR_APP_URL",
    :w3c => true
  },
  :platformName => "Android"
}
```

iOS Configuration

```bash
caps = {
  "lt:options" => {
    :deviceName => "iPhone 17 Pro",
    :platformName => "iOS",
    :platformVersion => "26",
    :isRealMobile => true,
    :app => "YOUR_APP_URL",
    :w3c => true
  },
  :platformName => "iOS"
}
```

Info Note:

1. You must add the generated APP_URL to the "app" capability in the config file.
2. You can generate capabilities for your test requirements with the help of our inbuilt [Capabilities Generator tool](https://www.lambdatest.com/capabilities-generator/). A more Detailed Capability Guide is available [here](https://www.lambdatest.com/support/docs/desired-capabilities-in-appium/).

## Executing The Tests

1. Install dependencies:

```bash
bundle install
```

2. Run the scripts:

Running on Android

Navigate to the corresponding directory based on your app.

```bash
cd android
```

Execute the following command to run your test on LambdaTest platform:

```bash
ruby android-sample.rb
```

Running on iOS

Navigate to the corresponding directory based on your app.

```bash
cd ios
```

Execute the following command to run your test on LambdaTest platform:

```bash
git clone https://github.com/LambdaTest/LT-appium-ruby && cd LT-appium-ruby
gem install appium_lib -v 10.6.0
ruby ios-sample.rb
```

Note: Ensure you have updated the YOUR_APP_URL in each respective file before running these commands. Your test results will be displayed on the terminal and can also be viewed in detail on the [App Automation Dashboard](https://appautomation.lambdatest.com/).

## Troubleshooting

1. Ruby 3.4 ArgumentError (String to Symbol)

   If you encounter an ArgumentError stating "String cannot be converted to Symbol," it is because Ruby 3.4 requires explicit symbols for the driver initialization keys. Update your initialization to include the :caps and :appium_lib symbols exactly as shown below:

```bash
@appium_driver = Appium::Driver.new({
  :caps => caps,
  :appium_lib => { :server_url => server_url }
}, true)
```

Set your credentials as environment variables.
2. Gem Installation Issues

     If you encounter an error like No such file or directory @ rb_sysopen during gem installation, you can resolve it by using administrator privileges or ensuring the directory exists:
      
      - macOS/Linux: Use sudo gem install appium_lib -v 10.6.0.

**macOS / Linux:**

```bash
export LT_USERNAME="YOUR_USERNAME"
export LT_ACCESS_KEY="YOUR_ACCESS_KEY"
```

**Windows:**

```bash
set LT_USERNAME="YOUR_USERNAME"
set LT_ACCESS_KEY="YOUR_ACCESS_KEY"
```

### Run tests

```bash
ruby android-sample.rb
```

View results on your TestMu AI dashboard.

### Local testing with TestMu AI Tunnel

To test locally hosted apps, set up the TestMu AI tunnel. OS-specific guides:

- [Local Testing on Windows](https://www.testmuai.com/support/docs/local-testing-for-windows/)
- [Local Testing on macOS](https://www.testmuai.com/support/docs/local-testing-for-macos/)
- [Local Testing on Linux](https://www.testmuai.com/support/docs/local-testing-for-linux/)

Add the following to your capabilities:

```js
tunnel: true,
```
      - Windows: Open Command Prompt as Administrator and run gem install appium_lib -v 10.6.0.

3. W3C Protocol Compatibility

    Ensure your capabilities object includes the :w3c => true option and wraps custom LambdaTest options inside the "lt:options" key to stay compatible with modern Appium standards.

## Contributions

Contributions are welcome. Open an issue to discuss your idea before submitting a pull request. When reporting bugs, include your Ruby version, OS, and appium_lib version.

## TestMu AI (Formerly LambdaTest) Community

Connect with testers and developers in the [TestMu AI Community](https://community.testmuai.com/). Ask questions, share what you are building, and discuss best practices in test automation and DevOps.
  
## TestMu AI (Formerly LambdaTest) Certifications
## Documentation & Resources 📚

Visit the following links to learn more about LambdaTest's features, setup and tutorials around test automation, mobile app testing, responsive testing, and manual testing.

 - [LambdaTest Documentation](https://www.lambdatest.com/support/docs/?utm_source=github&utm_medium=repo&utm_campaign=LT-appium-ruby)
 - [LambdaTest Blog](https://www.lambdatest.com/blog/?utm_source=github&utm_medium=repo&utm_campaign=LT-appium-ruby)
 - [LambdaTest Learning Hub](https://www.lambdatest.com/learning-hub/?utm_source=github&utm_medium=repo&utm_campaign=LT-appium-ruby)

Earn free [TestMu AI Certifications](https://www.testmuai.com/certifications/) for testers, developers, and QA engineers. Validate your skills in Selenium, Cypress, Playwright, Appium, Espresso and more. Industry-recognized, shareable on LinkedIn, and built by practitioners, not marketers.

## Learning Resources by TestMu AI (Formerly LambdaTest)

Learn modern testing through tutorials, guides, videos, and weekly updates:

* [TestMu AI Blog](https://www.testmuai.com/blog/)
* [TestMu AI Learning Hub](https://www.testmuai.com/learning-hub/)
* [TestMu AI on YouTube](https://www.youtube.com/@TestMuAI)
* [TestMu AI Newsletter](https://www.testmuai.com/newsletter/)
  
## LambdaTest is Now TestMu AI

On **January 12, 2026**, [LambdaTest evolved to TestMu AI](https://www.testmuai.com/lambdatest-is-now-testmuai/), the world's first fully autonomous **Agentic AI Quality Engineering Platform**.

Same team. Same infrastructure. Same customer accounts. All existing LambdaTest logins, scripts, capabilities, and integrations continue to work without change.

👉 Find the new home for [LambdaTest](https://www.testmuai.com).

### How LambdaTest Evolved into TestMu AI

In 2017, we launched LambdaTest with a simple mission: make testing fast, reliable, and accessible. As LambdaTest grew, we expanded into Test Intelligence, Visual Regression Testing, Accessibility Testing, API Testing, and Performance Testing, covering the full depth of the testing lifecycle.

As software development entered the AI era, testing had to evolve, too. We rebuilt the architecture to be AI-native from the ground up, with autonomous agents that **plan, author, execute, analyze, and optimize tests** while keeping humans in the loop. The platform integrates with your repos, CI, IDEs, and terminals, continuously learning from every code change and development signal.

That evolution earned a new name: **TestMu AI**, built for an AI-first future of quality engineering. TestMu is not a new name for us. It is the name of our annual community conference, which has brought together 100,000+ quality engineers to discuss how AI would reshape testing, long before that became an industry norm. 

What started as a high-performance cloud testing platform has transformed into an AI-native, multi-agent system powering a connected, end-to-end quality layer. That evolution defined a new identity: LambdaTest evolved into TestMu AI, built for an AI-first future of quality engineering.

## Support

Got a question? Email [support@testmuai.com](mailto:support@testmuai.com) or chat with us 24x7 from our chat portal.
