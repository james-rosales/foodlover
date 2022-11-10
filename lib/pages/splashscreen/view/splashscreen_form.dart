import 'package:flutter/material.dart';
import 'package:foodbank/widgets/rounded_button.dart';

import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 40,
                  child: Image.asset(
                    'assets/images/logo.png',
                  ),
                ),
              ),
              Text(
                AppLocalizations.of(context)?.title ?? '',
                style: const TextStyle(
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
              '/home',
            ),
            label: AppLocalizations.of(context)?.welcomebutton ?? '',
            backgroundColor: Colors.white,
            foregroundColor: Colors.orange,
            height: 70,
            width: 314,
            radius: 30,
          ),
        ),
      ],
    );
  }
}
