import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:foodbank/pages/dashboard/dashboard.dart';

class DashboardBottomBar extends StatelessWidget {
  const DashboardBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<DashboardBloc>();
    return BlocBuilder<DashboardBloc, DashboardState>(
        builder: (context, state) {
      return BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 31,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outlined,
              size: 31,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 31,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history,
              size: 31,
            ),
            label: '',
          ),
        ],
        currentIndex: state.currentTab.index,
        onTap: (index) {
          bloc.add(DashboardTabPressed(index));
          bloc.add(const DashboardTabChanged());
        },
        selectedItemColor: const Color.fromARGB(255, 222, 145, 29),
        unselectedItemColor: const Color.fromARGB(255, 191, 191, 190),
      );
    });
  }
}
