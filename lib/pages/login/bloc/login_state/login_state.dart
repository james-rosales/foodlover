// ignore: depend_on_referenced_packages
import 'package:foodbank/models/result/result.dart';
import 'package:foodbank/models/text_field_input/text_field_input.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  factory LoginState({
    @Default(TextFieldInput()) TextFieldInput email,
    @Default(TextFieldInput()) TextFieldInput password,
    @Default(RequestStatus.waiting) RequestStatus requestStatus,
    @Default(true) bool obscure,
  }) = _LoginState;
}
