import 'package:flutter/material.dart';

class MenuForm extends StatelessWidget {
  const MenuForm({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          left: 30,
          right: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Delicious\nfood for you',
              style: TextStyle(
                fontSize: 37,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                filled: true,
                fillColor: const Color.fromARGB(255, 210, 210, 210),
                prefixIcon: const Icon(
                  Icons.search,
                ),
                border: OutlineInputBorder(
                  borderSide:
                      const BorderSide(style: BorderStyle.none, width: 0),
                  borderRadius: BorderRadius.circular(
                    30,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const TabBar(
              unselectedLabelColor: Color.fromARGB(255, 74, 74, 73),
              isScrollable: true,
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 247, 169, 66),
                  width: 3.0,
                ),
                insets: EdgeInsets.symmetric(
                  horizontal: 80.0,
                ),
              ),
              // onTap: (index) => bloc.add(TabPressed(index)),
              tabs: [
                Tab(
                  text: 'Foods',
                ),
                Tab(
                  text: 'Drinks',
                ),
                Tab(
                  text: 'Snacks',
                ),
                Tab(
                  text: 'Sauce',
                ),
                Tab(
                  text: 'Desserts',
                ),
                Tab(
                  text: 'Beverages',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
