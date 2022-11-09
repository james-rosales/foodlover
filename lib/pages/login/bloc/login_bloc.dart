import 'package:foodbank/models/text_field_input/text_field_input.dart';

import 'bloc.dart';
import 'package:bloc/bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(super.initialState) {
    on<EmailChanged>(_emailChanged);
    on<PasswordChanged>(_passwordChanged);
    on<ObscurePressed>(_obscurePressed);
  }

  void _emailChanged(EmailChanged event, Emitter<LoginState> emit) {
    String email = event.email;
    String? errorText = state.email.error;

    ErrorType errorType = ErrorType.none;
    if (email.isEmpty) {
      errorType = ErrorType.empty;
      errorText = 'Email address must not be empty';
    } else if (!RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(email)) {
      errorText = 'Invalid email address';
      errorType = ErrorType.format;
    } else {
      errorText = null;
    }
    emit(
      state.copyWith.email(
        value: email,
        errorType: errorType,
        error: errorText,
      ),
    );
  }

  void _passwordChanged(PasswordChanged event, Emitter<LoginState> emit) {
    String password = event.password;
    String? errorText = state.password.error;
    ErrorType errorType = ErrorType.none;
    if (password.isEmpty) {
      errorType = ErrorType.empty;
      errorText = 'Password must not be empty';
    } else {
      errorText = null;
    }
    emit(
      state.copyWith.password(
        value: password,
        errorType: errorType,
        error: errorText,
      ),
    );
  }

  void _obscurePressed(ObscurePressed event, Emitter<LoginState> emit) {
    bool obscure = event.obscure;

    emit(
      state.copyWith(
        obscure: obscure = !obscure,
      ),
    );
  }
}
