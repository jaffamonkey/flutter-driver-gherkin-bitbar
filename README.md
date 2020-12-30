# Running the example

To run this example:

1. Ensure Android, Dart and Flutter SDK's installed and environment variables updated
2. Accept Android licences
```
flutter doctor --android-licenses
```
2. If running locally, ensure an emulator or device is running (Android or iOS - framework will pick up on which tests to run)
3. Install packages
   ```bash
   flutter pub get
   ```
3. In a command prompt (from the root of this library):
```
flutter drive --driver=test_driver/main.dart
```
## Debugging the example

To debug this example and step through the library code.

1. Set a break point in `test_driver/app_test.dart`
2. Set `exitAfterTestRun` on the configuration to false to ensure exiting cleanly as the IDE will handle exiting
3. If you are in VsCode you will simply be able to select `Debug example` from the dropdown in the `debugging tab` as the `launch.json` has been configured.
    - otherwise you will need to run a debugging session against `test_driver/app_test.dart`.

## Bitbar Device Cloud

### Prepare

* Run `flutter clean` in repo root.
* (iOS real device test only) create a folder in repo named `build/ios/iphoneos`
* Copy relevant shell script to folder below repo.
* rename to `run-test.sh`
* Zip whole repo folder and shell script file

### On Bitbar Cloud site

* Created Automated Test
* Select OS to use
* Select `Appium server` as a framework (just a cover-all selection for custom test frameworks - does not use Appium)
* Upload the zipfile created in Prepare stage, and a dummy apk/ipa (not used - BitBar will build from source) 
* Select devices then run the tests (for iOS simulator test, use Android Monitoring Trial from first select dropdown)
=======
## TODO: 
Bitbar run documentation (run-tests.sh is one of the files needed for uploading to BitBar)

