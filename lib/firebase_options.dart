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
    apiKey: 'AIzaSyCz25d7wRTpLJywXwBX0AfKLDQSaxAyYXM',
    appId: '1:347503185594:web:2c61324cc4081c2b8b7c83',
    messagingSenderId: '347503185594',
    projectId: 'stackedflutter',
    authDomain: 'stackedflutter.firebaseapp.com',
    storageBucket: 'stackedflutter.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBKpsPhFTTwuSDI4oGtSLzBLS5mXUNLMLg',
    appId: '1:347503185594:android:590417cc388771848b7c83',
    messagingSenderId: '347503185594',
    projectId: 'stackedflutter',
    storageBucket: 'stackedflutter.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBCRLTnhPyfexB0DZJCFJ8eD9yG-41lrNU',
    appId: '1:347503185594:ios:be4d4f86fce2fabd8b7c83',
    messagingSenderId: '347503185594',
    projectId: 'stackedflutter',
    storageBucket: 'stackedflutter.appspot.com',
    iosClientId: '347503185594-rbtf2bk18r7tbabf0liiehk955pvrhij.apps.googleusercontent.com',
    iosBundleId: 'com.example.stackedpractice',
  );
}
