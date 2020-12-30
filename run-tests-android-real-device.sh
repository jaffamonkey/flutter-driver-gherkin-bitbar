# Shell script file for running on BitBar device cloud
# add flutter to path
FLUTTER_PATH="/opt/testdroid/flutter/bin"
PUB_CACHE_BIN="/opt/testdroid/flutter/.pub-cache/bin"
DART_PATH="/opt/testdroid/flutter/bin/cache/dart-sdk/bin"
export PATH=$PATH:$FLUTTER_PATH:$PUB_CACHE_BIN:$DART_PATH
# install Android SDK platform 28 (this can be removed when cloud VMs contains correct version)
echo "install android SDK"
wget https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip
unzip sdk-tools-linux-4333796.zip
# rename old tools and move the new one to its place
mv $ANDROID_HOME/tools $ANDROID_HOME/tools-old
mv tools $ANDROID_HOME/
yes | /root/android-sdk-linux/tools/bin/sdkmanager "platforms;android-28" "build-tools;28.0.3" "platform-tools"
yes | /root/android-sdk-linux/tools/bin/sdkmanager --licenses && /root/android-sdk-linux/tools/bin/sdkmanager --update
yes | flutter doctor --android-licenses
flutter upgrade
flutter doctor
yes | unzip tests.zip
ls
cd flutter-gherkin-device-test
ls
flutter drive --target=test_driver/main.dart