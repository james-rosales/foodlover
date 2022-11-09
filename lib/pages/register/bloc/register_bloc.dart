import 'package:foodbank/models/text_field_input/text_field_input.dart';

import 'bloc.dart';
import 'package:bloc/bloc.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc(super.initialState) {
    on<EmailChanged>(_emailChanged);
    on<PasswordChanged>(_passwordChanged);
    on<ConfirmPasswordChanged>(_confirmpasswordChanged);
    on<FullNameChanged>(_fullnameChanged);
    on<RegisterObscurePasswordPressed>(_registerobscurepasswordPressed);
    on<RegisterObscureConfirmPasswordPressed>(
        _registerobscureconfirmpasswordPressed);
  }

  void _emailChanged(EmailChanged event, Emitter<RegisterState> emit) {
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

  void _passwordChanged(PasswordChanged event, Emitter<RegisterState> emit) {
    String password = event.password;

    String? errorText = state.password.error;
    ErrorType errorType = ErrorType.none;
    if (password.isEmpty) {
      errorType = ErrorType.empty;
      errorText = 'Password must not be empty';
    } else if (password.length >= 15) {
      errorType = ErrorType.length;
      errorText = 'Password must not be more than 15 characters';
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

  void _confirmpasswordChanged(
      ConfirmPasswordChanged event, Emitter<RegisterState> emit) {
    String confirmPassword = event.confirmpassword;
    String password = state.password.value;
    String? errorText = state.confirmPassword.error;
    ErrorType errorType = ErrorType.none;
    if (confirmPassword.isEmpty) {
      errorType = ErrorType.empty;
      errorText = 'Password must not be empty';
    } else if (confirmPassword.length >= 15) {
      errorType = ErrorType.length;
      errorText = 'Password must not be more than 15 characters';
    } else if (confirmPassword != password) {
      errorType = ErrorType.value;
      errorText = 'Password does not match';
    } else {
      errorText = null;
    }
    emit(
      state.copyWith.confirmPassword(
        value: confirmPassword,
        errorType: errorType,
        error: errorText,
      ),
    );
  }

  void _fullnameChanged(FullNameChanged event, Emitter<RegisterState> emit) {
    String fullname = event.fullname;
    String? errorText = state.fullname.error;
    ErrorType errorType = ErrorType.none;
    if (fullname.isEmpty) {
      errorType = ErrorType.empty;
      errorText = 'Full name must not be empty';
    } else {
      errorText = null;
    }
    emit(
      state.copyWith.fullname(
        value: fullname,
        errorType: errorType,
        error: errorText,
      ),
    );
  }

  void _registerobscurepasswordPressed(
      RegisterObscurePasswordPressed event, Emitter<RegisterState> emit) {
    bool obscure = event.obscure;

    emit(
      state.copyWith.password(
        obscure: obscure = !obscure,
      ),
    );
  }

  void _registerobscureconfirmpasswordPressed(
      RegisterObscureConfirmPasswordPressed event,
      Emitter<RegisterState> emit) {
    bool obscure = event.obscure;

    emit(
      state.copyWith.confirmPassword(
        obscure: obscure = !obscure,
      ),
    );
  }
}
