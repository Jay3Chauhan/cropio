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
    apiKey: 'AIzaSyACGe5wOUmHkP3tC3HPeOERgel03Sh6uUE',
    appId: '1:511855540722:web:774e6a4d3bfd090c88d36b',
    messagingSenderId: '511855540722',
    projectId: 'cropio-eventmanagement',
    authDomain: 'cropio-eventmanagement.firebaseapp.com',
    storageBucket: 'cropio-eventmanagement.appspot.com',
    measurementId: 'G-H9DP25VMBT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAM_YZEQk4ZHR1xKAeXiwGdFQdPs3k1T_U',
    appId: '1:511855540722:android:e09f30df160bcf0288d36b',
    messagingSenderId: '511855540722',
    projectId: 'cropio-eventmanagement',
    storageBucket: 'cropio-eventmanagement.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCEPDyQ7JKc11O1Dtf9K5F5Z8Q8ghhT_-8',
    appId: '1:511855540722:ios:e24b0c6ce6c71cdb88d36b',
    messagingSenderId: '511855540722',
    projectId: 'cropio-eventmanagement',
    storageBucket: 'cropio-eventmanagement.appspot.com',
    iosClientId: '511855540722-tctpsi4sn7p8o6fnptj7abgdg4crfu4l.apps.googleusercontent.com',
    iosBundleId: 'com.example.cropio',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCEPDyQ7JKc11O1Dtf9K5F5Z8Q8ghhT_-8',
    appId: '1:511855540722:ios:e24b0c6ce6c71cdb88d36b',
    messagingSenderId: '511855540722',
    projectId: 'cropio-eventmanagement',
    storageBucket: 'cropio-eventmanagement.appspot.com',
    iosClientId: '511855540722-tctpsi4sn7p8o6fnptj7abgdg4crfu4l.apps.googleusercontent.com',
    iosBundleId: 'com.example.cropio',
  );
}
