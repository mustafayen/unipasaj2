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
    apiKey: 'AIzaSyAtzG2JZ0iynf_G-pzu1L-VPoDMlGvJY_E',
    appId: '1:526329580645:web:289b0045de1392b5168a8c',
    messagingSenderId: '526329580645',
    projectId: 'unipasaj-a4caa',
    authDomain: 'unipasaj-a4caa.firebaseapp.com',
    storageBucket: 'unipasaj-a4caa.appspot.com',
    measurementId: 'G-S0MEFP0F5Z',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA3YjpXtHet7SNVfbL7qYiavZpvnbgHC0I',
    appId: '1:526329580645:android:7bc6cd893e18d9f9168a8c',
    messagingSenderId: '526329580645',
    projectId: 'unipasaj-a4caa',
    storageBucket: 'unipasaj-a4caa.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDFrtYWqFgRZ7A4-l9_XfHDkK3sUCOjz-Y',
    appId: '1:526329580645:ios:3fa99aa442c0f7fa168a8c',
    messagingSenderId: '526329580645',
    projectId: 'unipasaj-a4caa',
    storageBucket: 'unipasaj-a4caa.appspot.com',
    iosBundleId: 'com.example.unipasaj',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDFrtYWqFgRZ7A4-l9_XfHDkK3sUCOjz-Y',
    appId: '1:526329580645:ios:01948f22de5592f4168a8c',
    messagingSenderId: '526329580645',
    projectId: 'unipasaj-a4caa',
    storageBucket: 'unipasaj-a4caa.appspot.com',
    iosBundleId: 'com.example.unipasaj.RunnerTests',
  );
}
