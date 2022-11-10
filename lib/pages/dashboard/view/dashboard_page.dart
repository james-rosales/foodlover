import 'package:flutter/material.dart';
import 'package:foodbank/pages/dashboard/dashboard.dart';
import 'package:foodbank/pages/dashboard/view/dashboard_drawer.dart';
import 'package:foodbank/pages/menu/menu.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: DashboardBottomBar(),
      drawer: DashboardDrawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          80,
        ),
        child: DashboardAppBar(),
      ),
      body: MenuPage(),
    );
  }
}
