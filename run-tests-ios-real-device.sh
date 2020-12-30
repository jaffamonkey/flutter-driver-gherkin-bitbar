yes | unzip tests.zip
sudo gem install cocoapods
pod setup
flutter doctor
mv application.ipa application.zip
yes | unzip application.zip
ls -la
mv Payload/Runner.app Runner.app
ls -la
mv Runner.app flutter-gherkin-device-test/build/ios/iphoneos/Runner.app
cd flutter-gherkin-device-test
flutter upgrade
flutter drive -v --no-build --target=test_driver/main.dart