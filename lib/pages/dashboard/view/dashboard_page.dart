import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbank/pages/dashboard/dashboard.dart';
import 'package:foodbank/pages/dashboard/view/dashboard_app_bar.dart';
import 'package:foodbank/pages/dashboard/view/dashboard_drawer.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DashboardBloc>(
        create: (context) => DashboardBloc(DashboardState()),
        child: BlocBuilder<DashboardBloc, DashboardState>(
            builder: (context, state) {
          return Scaffold(
            bottomNavigationBar: const DashboardBottomBar(),
            drawer: const DashboardDrawer(),
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(
                state.height,
              ),
              child: const DashboardAppBar(),
            ),
            body: const DashboardPages(),
          );
        }));
  }
}
