abstract class MenuEvent {
  const MenuEvent();
}

class TabPressed extends MenuEvent {
  final int indexPage;

  const TabPressed(this.indexPage);
}
