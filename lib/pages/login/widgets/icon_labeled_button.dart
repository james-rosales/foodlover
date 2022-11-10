import 'package:flutter/material.dart';

class IconLabeledButton extends StatelessWidget {
  final Widget? icon;
  final String label;
  final Color backgroundColor;
  final double width;
  final double height;

  const IconLabeledButton({
    super.key,
    this.icon,
    required this.label,
    required this.backgroundColor,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
      child: SizedBox(
        width: width,
        height: height,
        child: SizedBox(
          child: ElevatedButton.icon(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                backgroundColor,
              ),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    5,
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
      ),
    );
  }
}
