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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyC9F6P216ddSo6wmcUjUiKoqt9v002p0CU',
    appId: '1:124851851413:web:54f97ba231dea9dec24b9c',
    messagingSenderId: '124851851413',
    projectId: 'master-quiz-bcaae',
    authDomain: 'master-quiz-bcaae.firebaseapp.com',
    storageBucket: 'master-quiz-bcaae.appspot.com',
    measurementId: 'G-1KWQMJCKNX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBhPF3evW6VuxCbGQ2ImAShpj83tgNEpwQ',
    appId: '1:124851851413:android:d3d335ebb58370e8c24b9c',
    messagingSenderId: '124851851413',
    projectId: 'master-quiz-bcaae',
    storageBucket: 'master-quiz-bcaae.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAxYn99nzVEBP4i0FLSW4BQymrpUAfNPcw',
    appId: '1:124851851413:ios:6a6b5e3ff3f6e64dc24b9c',
    messagingSenderId: '124851851413',
    projectId: 'master-quiz-bcaae',
    storageBucket: 'master-quiz-bcaae.appspot.com',
    iosClientId: '124851851413-bbuilhg6fm2daer54m4ri7fm0i03mkjj.apps.googleusercontent.com',
    iosBundleId: 'com.zaldier.masterquiz',
  );
}
