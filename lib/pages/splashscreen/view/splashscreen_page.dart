import 'package:flutter/material.dart';
import 'package:foodbank/pages/splashscreen/splashscreen.dart';

class SplashscreenPage extends StatelessWidget {
  const SplashscreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: SplashscreenForm(),
      ),
    );
  }
}