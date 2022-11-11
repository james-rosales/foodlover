import 'package:flutter/material.dart';
import 'package:foodbank/pages/splashscreen/splashscreen.dart';

class SplashscreenPage extends StatelessWidget {
  const SplashscreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 159, 159),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 237, 172, 81),
              Color.fromARGB(255, 242, 159, 159),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: const SingleChildScrollView(
          child: SplashscreenForm(),
        ),
      ),
    );
  }
}
