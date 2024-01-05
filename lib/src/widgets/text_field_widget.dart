import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String label;
  final String? placeholder;

  const TextFieldWidget({
    super.key,
    required this.label,
    this.placeholder,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        hintText: placeholder ?? label,
      ),
    );
  }
}
