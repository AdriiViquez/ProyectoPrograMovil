import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBRtZf88HKMonHEedevsTkpVbLNUehfRjI",
            authDomain: "ppme-gc-b5a45.firebaseapp.com",
            projectId: "ppme-gc-b5a45",
            storageBucket: "ppme-gc-b5a45.appspot.com",
            messagingSenderId: "1023682042323",
            appId: "1:1023682042323:web:e9235bcf3d7cab10957726",
            measurementId: "G-KVXXZMDHE6"));
  } else {
    await Firebase.initializeApp();
  }
}
