import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

int _selectedIndex = 0;

class DashboardBottomBar extends StatelessWidget {
  const DashboardBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      elevation: 0.0,
      backgroundColor: const Color.fromARGB(255, 216, 216, 216),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.heart,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_outlined,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.history_outlined,
          ),
          label: '',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: const Color.fromARGB(255, 222, 145, 29),
    );
  }
}
