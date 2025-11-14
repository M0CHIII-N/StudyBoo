import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCP5NJyF792n0ZDNu5z4th_TgGhzMeHgm8",
            authDomain: "study-boo-ychsj3.firebaseapp.com",
            projectId: "study-boo-ychsj3",
            storageBucket: "study-boo-ychsj3.firebasestorage.app",
            messagingSenderId: "547563298045",
            appId: "1:547563298045:web:cda04198bea5666e3fb294",
            measurementId: "G-2FP58L8LTD"));
  } else {
    await Firebase.initializeApp();
  }
}
