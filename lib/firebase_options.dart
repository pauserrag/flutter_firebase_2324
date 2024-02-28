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
    apiKey: 'AIzaSyCNZ3DgSHrIab_PPUBKU4YkK53rcSgut6w',
    appId: '1:680191677038:web:6ab6a72b4514b55130cc7f',
    messagingSenderId: '680191677038',
    projectId: 'flutterfirebase2324-9b9d5',
    authDomain: 'flutterfirebase2324-9b9d5.firebaseapp.com',
    storageBucket: 'flutterfirebase2324-9b9d5.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBausmtX_vSmbZqOWX90btr1xUHsP7X9WA',
    appId: '1:680191677038:android:4b3865834041ea2330cc7f',
    messagingSenderId: '680191677038',
    projectId: 'flutterfirebase2324-9b9d5',
    storageBucket: 'flutterfirebase2324-9b9d5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC2DtpmVcij0kihRm5wzZzmE8Pb3owL7To',
    appId: '1:680191677038:ios:718c884cc2f9354f30cc7f',
    messagingSenderId: '680191677038',
    projectId: 'flutterfirebase2324-9b9d5',
    storageBucket: 'flutterfirebase2324-9b9d5.appspot.com',
    iosBundleId: 'com.example.flutterFirebase2324',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC2DtpmVcij0kihRm5wzZzmE8Pb3owL7To',
    appId: '1:680191677038:ios:d16b5ea20744e1fb30cc7f',
    messagingSenderId: '680191677038',
    projectId: 'flutterfirebase2324-9b9d5',
    storageBucket: 'flutterfirebase2324-9b9d5.appspot.com',
    iosBundleId: 'com.example.flutterFirebase2324.RunnerTests',
  );
}