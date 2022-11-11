import 'bloc.dart';
import 'package:bloc/bloc.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> {
  MenuBloc(super.initialState) {
    on<TabPressed>(_tabPressed);
  }

  void _tabPressed(TabPressed event, Emitter<MenuState> emit) {
    var indexPage = event.indexPage;

    emit(
      state.copyWith(
        indexPage: indexPage,
      ),
    );
  }
}
