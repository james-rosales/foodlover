import 'package:foodbank/models/result/result.dart';
import 'package:foodbank/models/text_field_input/text_field_input.dart';

import 'bloc.dart';
import 'package:bloc/bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(super.initialState) {
    on<EmailChanged>(_emailChanged);
    on<PasswordChanged>(_passwordChanged);
    on<LoginObscurePressed>(_obscurePressed);
    on<LoginPressed>(_loginPressed);
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

  void _obscurePressed(LoginObscurePressed event, Emitter<LoginState> emit) {
    bool obscure = event.obscure;

    emit(
      state.copyWith.password(
        obscure: obscure = !obscure,
      ),
    );
  }

  Future<void> _loginPressed(
      LoginPressed event, Emitter<LoginState> emit) async {
    String email = 'admin@yahoo.com';
    String password = '123456';

    emit(state.copyWith(
      requestStatus: RequestStatus.waiting,
    ));
    if (state.email.value == email && state.password.value == password) {
      emit(
        state.copyWith(
          requestStatus: RequestStatus.inProgress,
        ),
      );
      emit(state.copyWith(
        requestStatus: RequestStatus.waiting,
      ));
    } else {
      emit(
        state.copyWith(
          requestStatus: RequestStatus.failure,
        ),
      );
      emit(state.copyWith(
        requestStatus: RequestStatus.waiting,
      ));
      await Future.delayed(const Duration(seconds: 3));
      emit(
        state.copyWith(
          requestStatus: RequestStatus.success,
        ),
      );
    }
  }
}
