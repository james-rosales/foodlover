import 'package:flutter/material.dart';

class IconTextButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final IconData iCon;
  final String label;
  const IconTextButton(
      {super.key, this.onPressed, required this.iCon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton.icon(
          onPressed: () {},
          icon: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Icon(
              iCon,
              color: Colors.white,
              size: 24,
            ),
          ),
          label: Text(
            label,
            style: const TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontFamily: 'SF Pro',
                fontSize: 17),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 70,
            right: 50,
          ),
          child: const Divider(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
