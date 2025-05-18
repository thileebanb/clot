import 'package:clot/core/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    super.key,
    required this.title,
    this.onPressed,
    this.width,
  });

  final String title;
  final VoidCallback? onPressed;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: context.colorScheme.primary,
        ),
        child: Text(
          title,
          style: TextStyle(color: context.colorScheme.onPrimary),
        ),
      ),
    );
  }
}
