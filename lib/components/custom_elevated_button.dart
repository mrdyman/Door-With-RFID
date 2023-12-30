import 'package:door_with_rfid/common/app_fonts.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String label;
  final Widget icon;
  final void Function()? onPressed;
  final bool isLoading;
  final Color? backgroundColor;

  const CustomElevatedButton({
    required this.label,
    required this.icon,
    required this.onPressed,
    this.isLoading = false,
    this.backgroundColor,
    Key? key,
  }) : super(key: key);

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
              const TextStyle(color: Colors.white, fontFamily: fontMontserrat)),
      onPressed: onPressed,
    );
  }
}
