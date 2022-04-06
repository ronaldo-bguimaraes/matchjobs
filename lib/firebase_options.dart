import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAoLXeqgN27KeHVsR8qDY6MxTltxd0ZS8o',
    appId: '1:303116120128:web:87e73073724751d0d66fa5',
    messagingSenderId: '303116120128',
    projectId: 'matchjobs-f10e0',
    authDomain: 'matchjobs-f10e0.firebaseapp.com',
    storageBucket: 'matchjobs-f10e0.appspot.com',
    measurementId: 'G-ZPVLR3M04C',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDu6KTIdsCsJX1BhyNOT3A5i01S0t4hXR8',
    appId: '1:303116120128:android:af48806284ea8916d66fa5',
    messagingSenderId: '303116120128',
    projectId: 'matchjobs-f10e0',
    storageBucket: 'matchjobs-f10e0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCaxVaZJS0J2AVbpRLYtAGTkgO6X-_kn3g',
    appId: '1:303116120128:ios:dc629e81e2f00defd66fa5',
    messagingSenderId: '303116120128',
    projectId: 'matchjobs-f10e0',
    storageBucket: 'matchjobs-f10e0.appspot.com',
    iosClientId:
        '303116120128-38ii3d0e1lo902t5rolp42c8j1jsv5cr.apps.googleusercontent.com',
    iosBundleId: 'com.ronaldobgui.matchjobs',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCaxVaZJS0J2AVbpRLYtAGTkgO6X-_kn3g',
    appId: '1:303116120128:ios:dc629e81e2f00defd66fa5',
    messagingSenderId: '303116120128',
    projectId: 'matchjobs-f10e0',
    storageBucket: 'matchjobs-f10e0.appspot.com',
    iosClientId:
        '303116120128-38ii3d0e1lo902t5rolp42c8j1jsv5cr.apps.googleusercontent.com',
    iosBundleId: 'com.ronaldobgui.matchjobs',
  );
}
