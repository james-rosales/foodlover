import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:foodbank/pages/login/login.dart';
import 'package:foodbank/widgets/labeled_textfied.dart';
import 'package:foodbank/widgets/rounded_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class LoginForm extends StatelessWidget {
  LoginForm({super.key});

  IconData _suffixIcon(isObscure) {
    if (isObscure) {
      return FontAwesomeIcons.eyeSlash;
    } else {
      return FontAwesomeIcons.eye;
    }
  }

  bool show = false;

  late final TextEditingController passwordcontroller = TextEditingController();

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
              onChanged: (value) {
                bloc.add(PasswordChanged(value));
                value.isNotEmpty ? show = true : show = false;
              },
              obscure: state.password.obscure,
              label: AppLocalizations.of(context)?.password ?? '',
              suffixIcon: show
                  ? IconButton(
                      onPressed: () => bloc.add(
                        LoginObscurePressed(
                          state.password.obscure,
                        ),
                      ),
                      icon: Icon(
                        _suffixIcon(
                          state.password.obscure,
                        ),
                      ),
                    )
                  : null,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 20,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () => {},
                  child: Text(
                    AppLocalizations.of(context)?.forgotpassword ?? '',
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.orange,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 15,
              ),
              child: RoundedButton(
                onPress: () {
                  bloc.add(EmailChanged(state.email.value));
                  bloc.add(PasswordChanged(state.password.value));
                },
                label: AppLocalizations.of(context)?.login ?? '',
              ),
            ),
            const IconLabeledButton(
              icon: FaIcon(FontAwesomeIcons.facebookF),
              backgroundColor: Color.fromARGB(255, 85, 165, 231),
              label: 'Login with Facebook',
            ),
            const IconLabeledButton(
              icon: FaIcon(FontAwesomeIcons.google),
              backgroundColor: Color.fromARGB(255, 230, 103, 94),
              label: 'Login with Google',
            ),
          ],
        )),
      );
    });
  }
}
