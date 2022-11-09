import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbank/pages/home/bloc/bloc.dart';
import 'package:foodbank/pages/home/view/view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState()),
      child: const Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(
            200,
          ),
          child: HomeAppBar(),
        ),
        body: HomePages(),
      ),
    );
  }
}
