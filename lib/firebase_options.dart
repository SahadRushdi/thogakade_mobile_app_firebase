// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyDsEo3oJEaUp9TlohsUbSdSA3ur5BrkENs',
    appId: '1:1023909493507:web:d1c33dfcd2e8c31c86c736',
    messagingSenderId: '1023909493507',
    projectId: 'thogakade-mobile-app-7c491',
    authDomain: 'thogakade-mobile-app-7c491.firebaseapp.com',
    storageBucket: 'thogakade-mobile-app-7c491.firebasestorage.app',
    measurementId: 'G-N9G01QEKK4',
    databaseURL: 'https://thogakade-mobile-app-7c491-default-rtdb.firebaseio.com/',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBVj1QusQCt2rWOIi8vBHkQ2L7YCLWbdKk',
    appId: '1:1023909493507:android:2f73ef9241485cdd86c736',
    messagingSenderId: '1023909493507',
    projectId: 'thogakade-mobile-app-7c491',
    storageBucket: 'thogakade-mobile-app-7c491.firebasestorage.app',
    databaseURL: 'https://thogakade-mobile-app-7c491-default-rtdb.firebaseio.com/',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB5i_qabVV6VTae3E0Hml640DBG7tSdJmA',
    appId: '1:1023909493507:ios:41863f6b390d0ea686c736',
    messagingSenderId: '1023909493507',
    projectId: 'thogakade-mobile-app-7c491',
    storageBucket: 'thogakade-mobile-app-7c491.firebasestorage.app',
    iosBundleId: 'com.example.firebaseExampleApp',
    databaseURL: 'https://thogakade-mobile-app-7c491-default-rtdb.firebaseio.com/',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB5i_qabVV6VTae3E0Hml640DBG7tSdJmA',
    appId: '1:1023909493507:ios:41863f6b390d0ea686c736',
    messagingSenderId: '1023909493507',
    projectId: 'thogakade-mobile-app-7c491',
    storageBucket: 'thogakade-mobile-app-7c491.firebasestorage.app',
    iosBundleId: 'com.example.firebaseExampleApp',
    databaseURL: 'https://thogakade-mobile-app-7c491-default-rtdb.firebaseio.com/',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDsEo3oJEaUp9TlohsUbSdSA3ur5BrkENs',
    appId: '1:1023909493507:web:4758ca157a44fdcb86c736',
    messagingSenderId: '1023909493507',
    projectId: 'thogakade-mobile-app-7c491',
    authDomain: 'thogakade-mobile-app-7c491.firebaseapp.com',
    storageBucket: 'thogakade-mobile-app-7c491.firebasestorage.app',
    measurementId: 'G-VZYYQ7E6JG',
    databaseURL: 'https://thogakade-mobile-app-7c491-default-rtdb.firebaseio.com/',
  );
}
