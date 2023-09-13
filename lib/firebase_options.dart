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
    apiKey: 'AIzaSyDAIK67FAih_4JT7ZrGTgPI2jgUTa3AWCQ',
    appId: '1:935182260238:web:62790fe7c8a127df2f445f',
    messagingSenderId: '935182260238',
    projectId: 'noteapp-de83d',
    authDomain: 'noteapp-de83d.firebaseapp.com',
    storageBucket: 'noteapp-de83d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDD8U6bsNuY5hLsyuhdQtzmpZyZhq3GHKM',
    appId: '1:935182260238:android:018298e9decf8c372f445f',
    messagingSenderId: '935182260238',
    projectId: 'noteapp-de83d',
    storageBucket: 'noteapp-de83d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDfSzVCve07hPmPGjeB69Fr_E6etO6l7tU',
    appId: '1:935182260238:ios:091152a40f75e94c2f445f',
    messagingSenderId: '935182260238',
    projectId: 'noteapp-de83d',
    storageBucket: 'noteapp-de83d.appspot.com',
    iosBundleId: 'com.example.noteApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDfSzVCve07hPmPGjeB69Fr_E6etO6l7tU',
    appId: '1:935182260238:ios:dca7c3637c4571262f445f',
    messagingSenderId: '935182260238',
    projectId: 'noteapp-de83d',
    storageBucket: 'noteapp-de83d.appspot.com',
    iosBundleId: 'com.example.noteApp.RunnerTests',
  );
}