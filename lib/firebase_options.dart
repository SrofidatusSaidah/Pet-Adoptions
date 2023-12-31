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
    apiKey: 'AIzaSyCianEf-wrd7Z-7qtoby1566DfODkzTeMo',
    appId: '1:216618200038:web:6979179707fd06f1dac427',
    messagingSenderId: '216618200038',
    projectId: 'praktikum-9-13241',
    authDomain: 'praktikum-9-13241.firebaseapp.com',
    storageBucket: 'praktikum-9-13241.appspot.com',
    measurementId: 'G-YED4QZDC2L',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDPOXQlKRtzIqhZegWrYHtDylZoV0ItFPY',
    appId: '1:216618200038:android:e4d1e2c71665659adac427',
    messagingSenderId: '216618200038',
    projectId: 'praktikum-9-13241',
    storageBucket: 'praktikum-9-13241.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCs4wSkyBxKk3h2AoSkao3OShKRqR7-wCI',
    appId: '1:216618200038:ios:eb3f479b19547137dac427',
    messagingSenderId: '216618200038',
    projectId: 'praktikum-9-13241',
    storageBucket: 'praktikum-9-13241.appspot.com',
    iosBundleId: 'com.example.prakmobile6',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCs4wSkyBxKk3h2AoSkao3OShKRqR7-wCI',
    appId: '1:216618200038:ios:d08d656caea74745dac427',
    messagingSenderId: '216618200038',
    projectId: 'praktikum-9-13241',
    storageBucket: 'praktikum-9-13241.appspot.com',
    iosBundleId: 'com.example.prakmobile6.RunnerTests',
  );
}
