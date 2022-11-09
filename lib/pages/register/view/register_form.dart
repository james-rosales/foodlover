import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbank/pages/register/register.dart';
import 'package:foodbank/widgets/labeled_textfied.dart';
import 'package:foodbank/widgets/rounded_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

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
                onChanged: (value) => bloc.add(
                  PasswordChanged(
                    value,
                  ),
                ),
                obscure: true,
                label: AppLocalizations.of(context)?.password ?? '',
              ),
              LabeledTextfield(
                errorText: state.confirmPassword.error,
                onChanged: (value) => bloc.add(
                  ConfirmPasswordChanged(
                    value,
                  ),
                ),
                obscure: true,
                label: AppLocalizations.of(context)?.confirmpassword ?? '',
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
            ],
          ),
        ),
      );
    });
  }
}
