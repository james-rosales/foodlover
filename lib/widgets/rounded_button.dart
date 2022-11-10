import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final VoidCallback? onPress;
  final String label;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double width;
  final double height;
  final double radius;

  const RoundedButton(
      {super.key,
      this.onPress,
      required this.label,
      this.backgroundColor,
      this.foregroundColor,
      required this.width,
      required this.height,
      required this.radius});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        right: 30,
      ),
      child: SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                radius,
              ),
            ),
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
          ),
          onPressed: () => onPress?.call(),
          child: Text(
            label,
          ),
        ),
      ),
    );
  }
}
