import 'package:flutter/material.dart';
import 'package:foodbank/pages/orders/view/view.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          60,
        ),
        child: OrdersAppBar(),
      ),
      body: OrdersForm(),
    );
  }
}
