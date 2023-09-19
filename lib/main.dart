import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khuloset_beta/src/app.dart';
import 'package:khuloset_beta/src/binding/init_bindings.dart';

void main() {
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
