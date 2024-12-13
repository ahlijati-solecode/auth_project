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
    apiKey: 'AIzaSyCa_MzvUceO-sHFSXoGQT-IIprz-XKp6A8',
    appId: '1:959178924674:web:ab0d5fb2f83c9abaa20a9b',
    messagingSenderId: '959178924674',
    projectId: 'auth-project-flutter-444107',
    authDomain: 'auth-project-flutter-444107.firebaseapp.com',
    storageBucket: 'auth-project-flutter-444107.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAOROyBi7WUgMaVlQHT0aDpXcxj0UkwYjY',
    appId: '1:959178924674:android:72a1285f729260a6a20a9b',
    messagingSenderId: '959178924674',
    projectId: 'auth-project-flutter-444107',
    storageBucket: 'auth-project-flutter-444107.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCsEXQpF_FrGzP1NAKn8k57x0MbcXEiaRI',
    appId: '1:959178924674:ios:8aa5ca827cbf3407a20a9b',
    messagingSenderId: '959178924674',
    projectId: 'auth-project-flutter-444107',
    storageBucket: 'auth-project-flutter-444107.firebasestorage.app',
    iosBundleId: 'com.example.authProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCsEXQpF_FrGzP1NAKn8k57x0MbcXEiaRI',
    appId: '1:959178924674:ios:8aa5ca827cbf3407a20a9b',
    messagingSenderId: '959178924674',
    projectId: 'auth-project-flutter-444107',
    storageBucket: 'auth-project-flutter-444107.firebasestorage.app',
    iosBundleId: 'com.example.authProject',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCa_MzvUceO-sHFSXoGQT-IIprz-XKp6A8',
    appId: '1:959178924674:web:c684e88b0fca9812a20a9b',
    messagingSenderId: '959178924674',
    projectId: 'auth-project-flutter-444107',
    authDomain: 'auth-project-flutter-444107.firebaseapp.com',
    storageBucket: 'auth-project-flutter-444107.firebasestorage.app',
  );
}