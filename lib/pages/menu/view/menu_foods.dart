import 'package:flutter/material.dart';
import 'package:foodbank/pages/menu/menu.dart';

class MenuFoods extends StatelessWidget {
  const MenuFoods({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ...List.generate(100, (index) {
              return const LabeledContainers();
            }),
          ],
        ),
      ),
    );
  }
}
