import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:foodbank/pages/login/login.dart';
import 'package:foodbank/widgets/labeled_textfied.dart';
import 'package:foodbank/widgets/rounded_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<LoginBloc>();
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      return Scaffold(
        backgroundColor: const Color.fromARGB(105, 232, 230, 230),
        body: SingleChildScrollView(
            child: Column(
          children: [
            LabeledTextfield(
              errorText: state.email.error,
              onChanged: (value) => bloc.add(
                EmailChanged(
                  value,
                ),
              ),
              label: AppLocalizations.of(context)?.email ?? '',
            ),
            LabeledTextfield(
              errorText: state.password.error,
              onChanged: (value) => bloc.add(
                PasswordChanged(
                  value,
                ),
              ),
              obscure: true,
              label: AppLocalizations.of(context)?.password ?? '',
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                top: 20,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () => {},
                  child: Text(
                    AppLocalizations.of(context)?.forgotpassword ?? '',
                    style: const TextStyle(
                      fontSize: 17,
                      color: Colors.orange,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: kToolbarHeight,
              ),
              child: RoundedButton(
                label: AppLocalizations.of(context)?.login ?? '',
                foregroundColor: Colors.white,
                backgroundColor: Colors.orange,
              ),
            ),
          ],
        )),
      );
    });
  }
}
