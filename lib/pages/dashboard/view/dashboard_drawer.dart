import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodbank/pages/dashboard/widgets/widgets.dart';

class DashboardDrawer extends StatelessWidget {
  const DashboardDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0.0,
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 180,
            child: DrawerHeader(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 237, 172, 81),
                    Color.fromARGB(255, 242, 159, 159),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.network(
                          'https://www.blockchain.com/static/img/about/Charlie@1x.png',
                          width: 100,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'James Carlo Rosales',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            '+639310606090',
                            style: TextStyle(),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 100,
                            height: 25,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 250, 98, 98),
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                            ),
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                '₱50,607.00',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const ListTile(
            title: IconTextButton(
              label: 'Profile',
              iCon: Icons.person,
            ),
          ),
          const ListTile(
            title: IconTextButton(
              label: 'Orders',
              iCon: Icons.shopping_cart_rounded,
            ),
          ),
          const ListTile(
            title: IconTextButton(
              label: 'Offer and Promo',
              iCon: FontAwesomeIcons.receipt,
            ),
          ),
          const ListTile(
            title: IconTextButton(
              label: 'Privacy Policy',
              iCon: Icons.sticky_note_2_rounded,
            ),
          ),
          const ListTile(
            title: IconTextButton(
              label: 'Security',
              iCon: FontAwesomeIcons.shieldHalved,
            ),
          ),
          const ListTile(
            title: IconTextButton(
              // onPressed: () => context.go('/home'),
              label: 'Sign out',
              iCon: FontAwesomeIcons.rightFromBracket,
            ),
          ),
        ],
      ),
    );
  }
}
