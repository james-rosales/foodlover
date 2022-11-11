import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbank/pages/menu/menu.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MenuBloc>(
        create: (context) => MenuBloc(MenuState()),
        child: const Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(210),
            child: MenuAppBar(),
          ),
          body: MenuCategories(),
        ));
  }
}
