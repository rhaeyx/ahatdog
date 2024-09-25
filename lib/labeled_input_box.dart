import 'package:flutter/material.dart';

class LabeledInputBox extends StatelessWidget {
  final String label;
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;

  const LabeledInputBox(
      {Key? key,
      required this.label,
      required this.controller,
      this.hintText = '',
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Text(
              label,
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8.0),
        TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),
            hintText: hintText,
          ),
        ),
      ],
    );
  }
}
