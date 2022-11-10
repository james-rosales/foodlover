import 'package:flutter/material.dart';

class LabeledTextfield extends StatelessWidget {
  final String label;
  final bool? obscure;
  final ValueChanged onChanged;
  final String? errorText;
  final Widget? suffixIcon;
  final String hintText;
  final Widget prefixIcon;
  final VoidCallback? onPress;

  const LabeledTextfield({
    super.key,
    required this.label,
    this.obscure,
    required this.onChanged,
    this.errorText,
    this.suffixIcon,
    this.onPress,
    required this.hintText,
    required this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        top: 40,
        right: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            onChanged: (value) => onChanged(
              value,
            ),
            obscureText: obscure ?? false,
            decoration: InputDecoration(
              hintText: hintText,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              errorText: errorText,
            ),
            obscuringCharacter: '*',
            textInputAction: TextInputAction.next,
          ),
        ],
      ),
    );
  }
}
