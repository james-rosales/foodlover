import 'package:flutter/material.dart';
import 'package:foodbank/pages/splashscreen/splashscreen.dart';

class SplashscreenPage extends StatelessWidget {
  const SplashscreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 247, 150, 5),
              Color.fromARGB(255, 230, 204, 167),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: const SplashscreenForm(),
      ),
    );
  }
}
