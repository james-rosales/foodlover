import 'bloc.dart';
import 'package:bloc/bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(super.initialState) {
    on<TabPressed>(_tabPressed);
  }

  void _tabPressed(TabPressed event, Emitter<HomeState> emit) {
    var indexPage = event.indexPage;

    emit(
      state.copyWith(
        indexPage: indexPage,
      ),
    );
  }
}
