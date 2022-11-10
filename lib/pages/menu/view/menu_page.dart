import 'package:flutter/material.dart';
import 'package:foodbank/pages/menu/view/menu_form.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: MenuForm(),
      ),
    );
  }
}
