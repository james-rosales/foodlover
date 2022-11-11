// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
part 'menu_state.freezed.dart';

@freezed
class MenuState with _$MenuState {
  factory MenuState({
    @Default(0) int indexPage,
  }) = _MenuState;
}
