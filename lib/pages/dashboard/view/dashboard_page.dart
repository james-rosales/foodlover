import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbank/pages/dashboard/dashboard.dart';
import 'package:foodbank/pages/dashboard/view/dashboard_drawer.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DashboardBloc>(
        create: (context) => DashboardBloc(DashboardState()),
        child: const Scaffold(
          bottomNavigationBar: DashboardBottomBar(),
          drawer: DashboardDrawer(),
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(
              80,
            ),
            child: DashboardAppBar(),
          ),
          body: DashboardPages(),
        ));
  }
}
