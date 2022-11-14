import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbank/pages/dashboard/dashboard.dart';

class OrdersAppBar extends StatelessWidget {
  const OrdersAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<DashboardBloc>();
    return BlocBuilder<DashboardBloc, DashboardState>(
        builder: (context, state) {
      return AppBar(
        elevation: 0.0,
        leading: IconButton(
          onPressed: () => bloc.add(
            const DashboardTabPressed(
              0,
            ),
          ),
          icon: const Icon(
            Icons.chevron_left,
          ),
        ),
      );
    });
  }
}
