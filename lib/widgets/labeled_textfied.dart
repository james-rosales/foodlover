import 'package:flutter/material.dart';

class LabeledTextfield extends StatelessWidget {
  final String label;
  final bool? obscure;

  const LabeledTextfield({
    super.key,
    required this.label,
    this.obscure,
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
            obscureText: obscure ?? false,
            decoration: const InputDecoration(
              hintStyle: TextStyle(
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
