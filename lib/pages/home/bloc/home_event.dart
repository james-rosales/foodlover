abstract class HomeEvent {
  const HomeEvent();
}

class TabPressed extends HomeEvent {
  final int indexPage;

  const TabPressed(this.indexPage);
}
