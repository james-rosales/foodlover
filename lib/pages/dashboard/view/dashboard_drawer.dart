import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodbank/pages/dashboard/widgets/widgets.dart';
import 'package:go_router/go_router.dart';

class DashboardDrawer extends StatelessWidget {
  const DashboardDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(
              100,
            ),
          ),
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 237, 172, 81),
              Color.fromARGB(255, 242, 159, 159),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(
                  Icons.arrow_back_sharp,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
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
      ),
    );
  }
}
