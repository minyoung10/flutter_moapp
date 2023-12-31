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
    apiKey: 'AIzaSyBLP3kDk2S_ZYPBuAMshpCdKzUgvDdMAAQ',
    appId: '1:816253000159:web:6f80e3b71e4658cb194c6a',
    messagingSenderId: '816253000159',
    projectId: 'class-work-c144b',
    authDomain: 'class-work-c144b.firebaseapp.com',
    storageBucket: 'class-work-c144b.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB7aLpVcteKjbcwT8MaLQXur8AWLo6qwgQ',
    appId: '1:816253000159:android:62b58e49931c0ce8194c6a',
    messagingSenderId: '816253000159',
    projectId: 'class-work-c144b',
    storageBucket: 'class-work-c144b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCLhdL2RUgOop7szuZjw55iiC21Z5rNZiY',
    appId: '1:816253000159:ios:933b7e48a747716d194c6a',
    messagingSenderId: '816253000159',
    projectId: 'class-work-c144b',
    storageBucket: 'class-work-c144b.appspot.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCLhdL2RUgOop7szuZjw55iiC21Z5rNZiY',
    appId: '1:816253000159:ios:9e4a96e9ffd6bbd1194c6a',
    messagingSenderId: '816253000159',
    projectId: 'class-work-c144b',
    storageBucket: 'class-work-c144b.appspot.com',
    iosBundleId: 'com.example.flutterApplication1.RunnerTests',
  );
}
