import 'package:flutter/material.dart';
import 'package:foodbank/pages/splashscreen/splashscreen.dart';
import 'package:go_router/go_router.dart';

class SplashscreenForm extends StatelessWidget {
  const SplashscreenForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 70,
            bottom: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 15,
                ),
                child: SizedBox(
                  width: 80,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(200),
                    child: Image.asset(
                      'assets/images/logo.jpg',
                    ),
                  ),
                ),
              ),
              const Text(
                'Food for\nEveryone',
                style: TextStyle(
                  fontSize: 65,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Image.asset('assets/images/screen-picture.png'),
        Padding(
          padding: const EdgeInsets.only(
            top: kToolbarHeight,
          ),
          child: RoundedButton(
            onPress: () => context.push(
              '/login',
            ),
            label: 'Get Started',
            backgroundColor: Colors.white,
            foregroundColor: Colors.orange,
          ),
        ),
      ],
    );
  }
}
