import 'package:flutter/material.dart';

class CustomElevatedButtonIcon extends StatelessWidget {
  final String label;
  final Widget icon;
  final void Function()? onPressed;
  final bool isLoading;
  final Color? backgroundColor;

  const CustomElevatedButtonIcon({
    required this.label,
    required this.icon,
    required this.onPressed,
    this.isLoading = false,
    this.backgroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor:
            backgroundColor ?? Theme.of(context).colorScheme.secondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 8,
        padding: const EdgeInsets.only(
          left: 10,
          top: 8,
          bottom: 8,
          right: 10,
        ),
      ),
      icon: isLoading
          ? SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(
                color: Theme.of(context).textTheme.labelLarge?.color,
                strokeWidth: 2,
              ),
            )
          : icon,
      label: Text(label,
          style:
              const TextStyle(color: Colors.white, fontFamily: "fontNunito")),
      onPressed: onPressed,
    );
  }
}
