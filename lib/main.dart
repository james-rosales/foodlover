import 'package:flutter/material.dart';

import 'pages/splashscreen/view/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'SF Pro',
                fontSize: 17,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  30,
                ),
              ),
              backgroundColor: Colors.orangeAccent,
            ),
          ),
          textTheme: const TextTheme(
            bodyText2: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
            ),
          ),
          scaffoldBackgroundColor: Colors.orange,
          fontFamily: 'SF Pro',
          primarySwatch: Colors.orange),
      home: const SplashscreenPage(),
    );
  }
}
