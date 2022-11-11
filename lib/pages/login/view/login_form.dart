import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbank/models/result/result.dart';
import 'package:foodbank/pages/login/login.dart';
import 'package:foodbank/widgets/labeled_textfied.dart';
import 'package:foodbank/widgets/message_dialog.dart';
import 'package:foodbank/widgets/rounded_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

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

  void listener(BuildContext context, LoginState state) {
    switch (state.requestStatus) {
      case RequestStatus.inProgress:
        showDialog(
          barrierDismissible: false,
          useRootNavigator: false,
          context: context,
          builder: (BuildContext context) {
            return MessageDialog(
              title: AppLocalizations.of(context)?.logginIn ?? '',
              content: Column(
                children: [
                  const CircularProgressIndicator(
                    color: Colors.orange,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Text(
                      AppLocalizations.of(context)?.pleasewait ?? '',
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            );
          },
        );
        break;
      case RequestStatus.success:
        context.push('/dashboard');

        break;
      case RequestStatus.failure:
        showDialog(
          barrierDismissible: false,
          useRootNavigator: false,
          context: context,
          builder: (BuildContext context) {
            return MessageDialog(
              title: AppLocalizations.of(context)?.error ?? '',
              content: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 30),
                    child: Text(
                      AppLocalizations.of(context)?.invalidaccount ?? '',
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                  RoundedButton(
                    onPress: () => Navigator.of(context).pop(),
                    label: 'OK',
                    width: 120,
                    height: 50,
                    radius: 10,
                  ),
                ],
              ),
            );
          },
        );
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<LoginBloc>();
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return BlocListener<LoginBloc, LoginState>(
          listener: (context, state) => listener(
            context,
            state,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LabeledTextfield(
                errorText: state.email.error,
                onChanged: (value) => bloc.add(
                  EmailChanged(
                    value,
                  ),
                ),
                label: AppLocalizations.of(context)?.email ?? '',
                hintText: AppLocalizations.of(context)?.email ?? '',
                prefixIcon: const Icon(Icons.email),
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
                hintText: AppLocalizations.of(context)?.password ?? '',
                prefixIcon: const Icon(Icons.lock),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 20,
                  right: 20,
                ),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () => {},
                    child: Text(
                      AppLocalizations.of(context)?.forgotpassword ?? '',
                      style: const TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 247, 169, 66),
                      ),
                    ),
                  ),
                ),
              ),
              RoundedButton(
                onPress: () {
                  bloc.add(EmailChanged(state.email.value));
                  bloc.add(PasswordChanged(state.password.value));
                  bloc.add(const LoginPressed());
                },
                label: AppLocalizations.of(context)?.login ?? '',
                height: 70,
                width: 314,
                radius: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 5,
                  right: 5,
                  top: 20,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(
                            left: 30,
                            right: 10.0,
                          ),
                          child: const Divider(
                            thickness: 2,
                          ),
                        ),
                      ),
                      Text(AppLocalizations.of(context)?.othersignin ?? ''),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: 10.0, right: 30),
                          child: const Divider(
                            thickness: 2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/facebook.png',
                      width: 90,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Image.asset(
                      'assets/images/google.png',
                      width: 50,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: kToolbarHeight,
                  top: 20,
                ),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Login with SMS',
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
