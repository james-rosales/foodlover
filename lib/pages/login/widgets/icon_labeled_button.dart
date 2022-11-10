import 'package:flutter/material.dart';

class IconLabeledButton extends StatelessWidget {
  final Widget? icon;
  final String label;
  final Color backgroundColor;
  final Color overlayColor;
  const IconLabeledButton(
      {super.key,
      this.icon,
      required this.label,
      required this.backgroundColor,
      required this.overlayColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15,
      ),
      child: SizedBox(
        width: 200,
        height: 50,
        child: ElevatedButton.icon(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(
              overlayColor,
            ),
            backgroundColor: MaterialStateProperty.all(
              backgroundColor,
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  30,
                ),
              ),
            ),
          ),
          onPressed: () {},
          icon: icon!,
          label: Text(
            label,
          ),
        ),
      ),
    );
  }
}
