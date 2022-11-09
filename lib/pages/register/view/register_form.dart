import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodbank/pages/register/register.dart';
import 'package:foodbank/widgets/labeled_textfied.dart';
import 'package:foodbank/widgets/rounded_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// ignore: must_be_immutable
class RegisterForm extends StatelessWidget {
  RegisterForm({super.key});
  IconData _passwordsuffixIcon(isObscure) {
    if (isObscure) {
      return FontAwesomeIcons.eyeSlash;
    } else {
      return FontAwesomeIcons.eye;
    }
  }

  IconData _confirmpasswordsuffixIcon(isObscure) {
    if (isObscure) {
      return FontAwesomeIcons.eyeSlash;
    } else {
      return FontAwesomeIcons.eye;
    }
  }

  bool passwordiconShow = false;
  bool confirmpasswordiconShow = false;
  @override
  Widget build(BuildContext context) {
    var bloc = context.read<RegisterBloc>();
    return BlocBuilder<RegisterBloc, RegisterState>(builder: (context, state) {
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
                  bloc.add(
                    PasswordChanged(
                      value,
                    ),
                  );
                  value.isNotEmpty
                      ? passwordiconShow = true
                      : passwordiconShow = false;
                },
                obscure: state.password.obscure,
                label: AppLocalizations.of(context)?.password ?? '',
                suffixIcon: passwordiconShow
                    ? IconButton(
                        onPressed: () => bloc.add(
                          RegisterObscurePasswordPressed(
                            state.password.obscure,
                          ),
                        ),
                        icon: Icon(
                          _passwordsuffixIcon(
                            state.password.obscure,
                          ),
                        ),
                      )
                    : null,
              ),
              LabeledTextfield(
                errorText: state.confirmPassword.error,
                onChanged: (value) {
                  bloc.add(
                    ConfirmPasswordChanged(
                      value,
                    ),
                  );
                  value.isNotEmpty
                      ? confirmpasswordiconShow = true
                      : confirmpasswordiconShow = false;
                },
                obscure: state.confirmPassword.obscure,
                label: AppLocalizations.of(context)?.confirmpassword ?? '',
                suffixIcon: confirmpasswordiconShow
                    ? IconButton(
                        onPressed: () => bloc.add(
                          RegisterObscureConfirmPasswordPressed(
                            state.confirmPassword.obscure,
                          ),
                        ),
                        icon: Icon(
                          _confirmpasswordsuffixIcon(
                            state.confirmPassword.obscure,
                          ),
                        ),
                      )
                    : null,
              ),
              LabeledTextfield(
                errorText: state.fullname.error,
                onChanged: (value) => bloc.add(
                  FullNameChanged(
                    value,
                  ),
                ),
                label: AppLocalizations.of(context)?.fullname ?? '',
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: kToolbarHeight,
                  top: 30,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 15,
                  ),
                  child: RoundedButton(
                    onPress: () {
                      bloc.add(EmailChanged(state.email.value));
                      bloc.add(PasswordChanged(state.password.value));
                      bloc.add(
                          ConfirmPasswordChanged(state.confirmPassword.value));
                      bloc.add(FullNameChanged(state.fullname.value));
                    },
                    label: AppLocalizations.of(context)?.signin ?? '',
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
