// ignore: depend_on_referenced_packages
import 'package:foodbank/models/result/result.dart';
import 'package:foodbank/models/text_field_input/text_field_input.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_state.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  factory RegisterState({
    @Default(TextFieldInput()) TextFieldInput email,
    @Default(TextFieldInput()) TextFieldInput password,
    @Default(TextFieldInput()) TextFieldInput confirmPassword,
    @Default(TextFieldInput()) TextFieldInput fullname,
    @Default(RequestStatus.waiting) RequestStatus requestStatus,
  }) = _RegisterState;
}
