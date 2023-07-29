# Flutter Defaults

Counter app project as guide on how to do the most essential tasks in flutter without **funny shiny methods.**



## Building

You can follow these instructions to build the app and install it onto your device.

### Prerequisites

If you are new to Flutter, please first follow the [Flutter Setup](https://flutter.dev/setup/) guide.

### Building and installing the Flutter Defaults app

```
git clone https://github.com/juliotati/flutter_defaults.git
cd flutter_defaults

flutter clean
flutter pub get
flutter packages pub run build_runner build --delete-conflicting-outputs
```

Build and install the Flutter app to your connected device/emulator.
```
flutter run
```
