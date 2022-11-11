import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbank/pages/dashboard/dashboard.dart';
import 'package:foodbank/pages/login/login.dart';
import 'package:foodbank/pages/menu/menu.dart';
import 'package:foodbank/pages/register/register.dart';

class DashboardPages extends StatelessWidget {
  const DashboardPages({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();

    return BlocListener<DashboardBloc, DashboardState>(
      listenWhen: (previous, current) =>
          previous.currentTab != current.currentTab,
      listener: (context, state) {
        pageController.jumpToPage(state.currentTab.index);
      },
      child: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const [
          MenuPage(),
          LoginPage(),
          RegisterPage(),
        ],
      ),
    );
  }
}
