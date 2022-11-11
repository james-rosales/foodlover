import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbank/pages/menu/menu.dart';

class MenuCategories extends StatelessWidget {
  const MenuCategories({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<MenuBloc>();
    return BlocBuilder<MenuBloc, MenuState>(builder: (
      context,
      state,
    ) {
      return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          shape: const BeveledRectangleBorder(),
          title: DefaultTabController(
            length: 6,
            child: TabBar(
              onTap: (index) => bloc.add(TabPressed(index)),
              unselectedLabelColor: const Color.fromARGB(255, 74, 74, 73),
              isScrollable: true,
              indicator: const UnderlineTabIndicator(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 247, 169, 66),
                  width: 3.0,
                ),
                insets: EdgeInsets.symmetric(
                  horizontal: 80.0,
                ),
              ),
              tabs: const [
                Tab(
                  text: 'Foods',
                ),
                Tab(
                  text: 'Drinks',
                ),
                Tab(
                  text: 'Snacks',
                ),
                Tab(
                  text: 'Sauce',
                ),
                Tab(
                  text: 'Desserts',
                ),
                Tab(
                  text: 'Beverages',
                ),
              ],
            ),
          ),
        ),
        body: MenuCategoriesPages(),
      );
    });
  }
}
