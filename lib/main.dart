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


/*
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          toolbarHeight: 50,
          leading: const IconButton(
            icon: Icon(
              Icons.chevron_left,
              color: Colors.black,
            ),
            tooltip: 'previous button',
            onPressed: null,
          ),
          title: const Text(
            'Home',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  height: 200,
                  width: 200,
                  child: Text(
                    'Feed',
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  height: 200,
                  width: 200,
                  child: Text(
                    'Feed',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const BottomAppBar(
          height: 50,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.home),
            ],
          ),
        ),
        floatingActionButton: const SizedBox(
          width: 200,
          height: 50,
          child: FittedBox(
            child: FloatingActionButton(
              onPressed: null,
              child: Icon(Icons.home),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
*/
