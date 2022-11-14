import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbank/pages/dashboard/dashboard.dart';

class OrdersForm extends StatelessWidget {
  const OrdersForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DashboardBloc>(
        create: (context) => DashboardBloc(DashboardState()),
        child: Column(
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
        ));
  }
}
