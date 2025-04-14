// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:clot/core/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.label,
    required this.onChanged,
    required this.controller,
  });

  final String label;
  final ValueChanged<String> onChanged;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      onChanged: onChanged,
      controller: controller,

      onTapOutside: context.hideKeyboard,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide.none,
        ),
        labelText: label,
        labelStyle: TextStyle(
          color: context.colorScheme.surfaceDim.withValues(alpha: 0.5),
        ),
        filled: true,
        fillColor: context.colorScheme.outline,
      ),
    );
  }
}
