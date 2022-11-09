import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbank/pages/home/bloc/bloc.dart';
import 'package:foodbank/pages/login/login.dart';
import 'package:foodbank/pages/register/register.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    return BlocListener<HomeBloc, HomeState>(
      listenWhen: (previous, current) =>
          previous.indexPage != current.indexPage,
      listener: (context, state) {
        pageController.jumpToPage(state.indexPage);
      },
      child: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const [
          LoginPage(),
          RegisterPage(),
        ],
      ),
    );
  }
}
