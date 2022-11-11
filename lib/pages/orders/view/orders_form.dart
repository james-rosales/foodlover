import 'package:flutter/material.dart';

class OrdersForm extends StatelessWidget {
  const OrdersForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        Icon(
          Icons.shopping_cart_outlined,
          size: 120,
          color: Color.fromARGB(199, 199, 199, 199),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'No orders yet',
          style: TextStyle(
            fontSize: 33,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Hit the orange button down\nbelow to Create an order',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
