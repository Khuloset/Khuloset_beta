import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khuloset_beta/src/app.dart';
import 'package:khuloset_beta/src/binding/init_bindings.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyCkG7bJ271gHv7Yh3vLvOZtqHzSRWfrMn0",
          authDomain: "khuloset-beta-123.firebaseapp.com",
          projectId: "khuloset-beta-123",
          storageBucket: "khuloset-beta-123.appspot.com",
          messagingSenderId: "852608203033",
          appId: "1:852608203033:web:cfd2f4cc3a4ab4706a2d88"
      ),
    );
  }else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false, //디버그 배너 해제
      title: 'Khuloset Beta',
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white70,
        appBarTheme: AppBarTheme(
            foregroundColor: Colors.black, backgroundColor: Colors.white),
      ),
      home: const App(),
      initialBinding: InitBinding(), //초기 메모리 바인딩
    );
  }
}