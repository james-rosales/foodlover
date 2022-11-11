import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbank/pages/menu/menu.dart';

class MenuCategoriesPages extends StatelessWidget {
  const MenuCategoriesPages({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    return BlocListener<MenuBloc, MenuState>(
      listenWhen: (previous, current) =>
          previous.indexPage != current.indexPage,
      listener: (context, state) {
        pageController.jumpToPage(state.indexPage);
      },
      child: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const [
          Text('Foods'),
          Text('DRINKS'),
          Text('SNACKS'),
          Text('SAUCE'),
          Text('DESSERTS'),
        ],
      ),
    );
  }
}
