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
    apiKey: 'AIzaSyCp1AyiKT7a8hgDhH7i9P68-tB0qs86GcA',
    appId: '1:470625562934:web:1ec597155dad5b4ed2c397',
    messagingSenderId: '470625562934',
    projectId: 'musicapp-5143b',
    authDomain: 'musicapp-5143b.firebaseapp.com',
    storageBucket: 'musicapp-5143b.appspot.com',
    measurementId: 'G-9JLFPBDT4E',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA8SOGev3oyv9Yulr2rNmp-SXvAUMoNt38',
    appId: '1:470625562934:android:ed4a24a07bcbf66ad2c397',
    messagingSenderId: '470625562934',
    projectId: 'musicapp-5143b',
    storageBucket: 'musicapp-5143b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDR9b6svCDlHgyi30XM_8dxbTiM5w9ohSw',
    appId: '1:470625562934:ios:626de11b209d4a53d2c397',
    messagingSenderId: '470625562934',
    projectId: 'musicapp-5143b',
    storageBucket: 'musicapp-5143b.appspot.com',
    iosClientId: '470625562934-e3e0mthab73kkf735dfs5bc40odde92g.apps.googleusercontent.com',
    iosBundleId: 'com.example.musicApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDR9b6svCDlHgyi30XM_8dxbTiM5w9ohSw',
    appId: '1:470625562934:ios:626de11b209d4a53d2c397',
    messagingSenderId: '470625562934',
    projectId: 'musicapp-5143b',
    storageBucket: 'musicapp-5143b.appspot.com',
    iosClientId: '470625562934-e3e0mthab73kkf735dfs5bc40odde92g.apps.googleusercontent.com',
    iosBundleId: 'com.example.musicApp',
  );
}
