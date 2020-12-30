yes | unzip tests.zip
sudo gem install cocoapods
pod setup
flutter doctor
cd flutter-gherkin-device-test
flutter clean
rm -r .packages
rm pubspec.lock
npm install -g ios-sim
ios-sim start --devicetypeid "iPhone-7"
flutter devices > devices.txt
cat devices.txt | while read line
do
case "$line" in
*simulator*)
  TEST_DEVICE=$line
  RUN_DEVICE=`echo ${TEST_DEVICE} | awk '{print $1, $2}'`
  echo $RUN_DEVICE > run_device.txt
  echo "device"
  cat run_device.txt
  ;;
  *)
  ;;
esac
done
flutter upgrade
ls -la
flutter drive -d "`cat run_device.txt`" --target=test_driver/main.dart