import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyB425IWxOuQuAYzNrhPTKdtNEMHogYuCVQ",
            authDomain: "dbdentalzafiro.firebaseapp.com",
            projectId: "dbdentalzafiro",
            storageBucket: "dbdentalzafiro.appspot.com",
            messagingSenderId: "493976976882",
            appId: "1:493976976882:web:7d92fefc2f59715d777f6b",
            measurementId: "G-22E26YKVZZ"));
  } else {
    await Firebase.initializeApp();
  }
}
