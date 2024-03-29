// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDZlvO80kB0_Gcl8P7rFejX2moAzYZtWwg',
    appId: '1:488991583104:web:59d6598cbc34fea7582f65',
    messagingSenderId: '488991583104',
    projectId: 'plantapp-10566',
    authDomain: 'plantapp-10566.firebaseapp.com',
    storageBucket: 'plantapp-10566.appspot.com',
    measurementId: 'G-KZGCFN95V4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBR9MI5tctvTAfkGnLnCv282G4IKDAc1KU',
    appId: '1:488991583104:android:30808d2cda18fd28582f65',
    messagingSenderId: '488991583104',
    projectId: 'plantapp-10566',
    storageBucket: 'plantapp-10566.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAO1aPadVc3XJzF5JsBQvG4eZ26GtYaojA',
    appId: '1:488991583104:ios:f4036d4f731fc328582f65',
    messagingSenderId: '488991583104',
    projectId: 'plantapp-10566',
    storageBucket: 'plantapp-10566.appspot.com',
    iosBundleId: 'com.example.plantapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAO1aPadVc3XJzF5JsBQvG4eZ26GtYaojA',
    appId: '1:488991583104:ios:3100c429e96ac8d1582f65',
    messagingSenderId: '488991583104',
    projectId: 'plantapp-10566',
    storageBucket: 'plantapp-10566.appspot.com',
    iosBundleId: 'com.example.plantapp.RunnerTests',
  );
}
