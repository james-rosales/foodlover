import 'package:flutter/material.dart';

class LabeledTextfield extends StatelessWidget {
  final String label;
  final bool? obscure;
  final ValueChanged onChanged;
  final String? errorText;

  const LabeledTextfield({
    super.key,
    required this.label,
    this.obscure,
    required this.onChanged,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        top: 50,
        right: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          TextFormField(
            onChanged: (value) => onChanged(
              value,
            ),
            obscureText: obscure ?? false,
            decoration: InputDecoration(
              errorText: errorText,
              hintStyle: const TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
            obscuringCharacter: '*',
            textInputAction: TextInputAction.next,
          ),
        ],
      ),
    );
  }
}
