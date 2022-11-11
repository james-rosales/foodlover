import 'package:flutter/material.dart';

class DashboardAppBar extends StatelessWidget {
  const DashboardAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_cart_outlined,
          ),
        ),
      ],
      backgroundColor: const Color.fromARGB(255, 247, 246, 246),
      shape: const BeveledRectangleBorder(),
      title: const Text('Food Bank'),
    );
  }
}
