import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final VoidCallback? onPress;
  final String label;
  final Color? backgroundColor;
  final Color? foregroundColor;
  const RoundedButton(
      {super.key,
      this.onPress,
      required this.label,
      this.backgroundColor,
      this.foregroundColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 314,
      height: 70,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
        ),
        onPressed: () => onPress?.call(),
        child: Text(
          label,
        ),
      ),
    );
  }
}
