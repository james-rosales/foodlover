import 'package:bloc/bloc.dart';

import 'bloc.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc(super.initialState) {
    on<DashboardTabPressed>(_tabPressed);
  }

  void _tabPressed(DashboardTabPressed event, Emitter<DashboardState> emit) {
    emit(state.copyWith(
      currentTab: Tabs.values[event.page],
    ));
  }
}
