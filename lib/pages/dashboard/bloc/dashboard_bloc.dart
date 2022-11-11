import 'package:bloc/bloc.dart';

import 'bloc.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc(super.initialState) {
    on<DashboardTabPressed>(_tabPressed);
    on<DashboardTabChanged>(_dashboardtabChanged);
  }

  void _tabPressed(DashboardTabPressed event, Emitter<DashboardState> emit) {
    emit(state.copyWith(
      currentTab: Tabs.values[event.page],
    ));
  }

  void _dashboardtabChanged(
      DashboardTabChanged event, Emitter<DashboardState> emit) {
    int index = state.currentTab.index;
    String title = 'Food Bank';
    double height = 60;
    if (index == 0) {
      title = 'Food Bank';
    } else if (index == 1) {
      height = 0;
      title = 'Orders';
    } else if (index == 2) {
      height = 0;
      title = 'Profile';
    } else if (index == 3) {
      height = 0;
      title = 'History';
    } else {
      null;
    }
    print(index);
    emit(state.copyWith(
      title: title,
      height: height,
    ));
  }
}
