// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
part 'dashboard_state.freezed.dart';

enum Tabs {
  menus,
  favorites,
  profile,
  history,
}

@freezed
class DashboardState with _$DashboardState {
  factory DashboardState({
    @Default(Tabs.menus) Tabs currentTab,
  }) = _DashboardState;
}
