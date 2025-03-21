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
    apiKey: 'AIzaSyCpPjwzkH9zBYe4q40dW214y1hmS50uv8U',
    appId: '1:110911338010:web:3dc92a21d905d8c6b583a3',
    messagingSenderId: '110911338010',
    projectId: 'chosn-258ec',
    authDomain: 'chosn-258ec.firebaseapp.com',
    storageBucket: 'chosn-258ec.firebasestorage.app',
    measurementId: 'G-340NEYW97B',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBsneJFzBTVOukEdu6l3JapLaSY8vk0Voc',
    appId: '1:110911338010:android:a5ae94ddf385dda4b583a3',
    messagingSenderId: '110911338010',
    projectId: 'chosn-258ec',
    storageBucket: 'chosn-258ec.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAPQeok7MzC1req3LwVfNVyUph1vS02X_A',
    appId: '1:110911338010:ios:f7180fedf15801d1b583a3',
    messagingSenderId: '110911338010',
    projectId: 'chosn-258ec',
    storageBucket: 'chosn-258ec.firebasestorage.app',
    iosBundleId: 'com.example.chosnTest',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAPQeok7MzC1req3LwVfNVyUph1vS02X_A',
    appId: '1:110911338010:ios:f7180fedf15801d1b583a3',
    messagingSenderId: '110911338010',
    projectId: 'chosn-258ec',
    storageBucket: 'chosn-258ec.firebasestorage.app',
    iosBundleId: 'com.example.chosnTest',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCpPjwzkH9zBYe4q40dW214y1hmS50uv8U',
    appId: '1:110911338010:web:db75f512345c14f1b583a3',
    messagingSenderId: '110911338010',
    projectId: 'chosn-258ec',
    authDomain: 'chosn-258ec.firebaseapp.com',
    storageBucket: 'chosn-258ec.firebasestorage.app',
    measurementId: 'G-CJC71SZP26',
  );
}
