import 'package:flutter/material.dart';

class OrdersAppBar extends StatelessWidget {
  const OrdersAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.chevron_left,
        ),
      ),
    );
  }
}
