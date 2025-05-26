# LambdaTest Appium Ruby Automation - Execution Steps

## Prerequisites
- Ruby >= 2.7
- Bundler (`gem install bundler`)
- LambdaTest credentials (username and access key)

## 1. Install Dependencies

### For Native (Appium) Android & iOS Tests
```
bundle install
```

### For Web (Selenium) Android & iOS Tests
```
BUNDLE_GEMFILE=Gemfile.web bundle install
```

## 2. Run Tests

### Native Android
```
LT_USERNAME=<your_username> LT_ACCESS_KEY=<your_access_key> BUNDLE_GEMFILE=Gemfile bundle exec ruby android/android-sample.rb
```

### Native iOS
```
LT_USERNAME=<your_username> LT_ACCESS_KEY=<your_access_key> BUNDLE_GEMFILE=Gemfile bundle exec ruby ios/ios-sample.rb
```

### Web Android
```
LT_USERNAME=<your_username> LT_ACCESS_KEY=<your_access_key> BUNDLE_GEMFILE=Gemfile.web bundle exec ruby android/android-web-sample.rb
```

### Web iOS
```
LT_USERNAME=<your_username> LT_ACCESS_KEY=<your_access_key> BUNDLE_GEMFILE=Gemfile.web bundle exec ruby ios/ios-web-sample.rb
```

## Notes
- Use the correct Gemfile for each test type.
- If you see network or timeout errors, retry the command.
- Only two Gemfiles are needed: `Gemfile` (native) and `Gemfile.web` (web).
- No extra files or changes are required beyond this setup. 