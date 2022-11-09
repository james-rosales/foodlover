import 'package:flutter/material.dart';
import 'package:foodbank/widgets/labeled_textfied.dart';
import 'package:foodbank/widgets/rounded_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(105, 232, 230, 230),
      body: SingleChildScrollView(
        child: Column(
          children: [
            LabeledTextfield(
              label: AppLocalizations.of(context)?.email ?? '',
            ),
            LabeledTextfield(
              obscure: true,
              label: AppLocalizations.of(context)?.password ?? '',
            ),
            LabeledTextfield(
              obscure: true,
              label: AppLocalizations.of(context)?.confirmpassword ?? '',
            ),
            LabeledTextfield(
              label: AppLocalizations.of(context)?.fullname ?? '',
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: kToolbarHeight,
                top: 30,
              ),
              child: RoundedButton(
                label: AppLocalizations.of(context)?.signin ?? '',
                foregroundColor: Colors.white,
                backgroundColor: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
