import 'package:flutter/material.dart';
import 'package:foodbank/pages/history/view/view.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: HistoryAppBar(),
      ),
    );
  }
}
