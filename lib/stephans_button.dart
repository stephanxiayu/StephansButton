library stephans_button;

import 'package:flutter/material.dart';

class StephansButton extends StatelessWidget {
  final String label;
  final Function() onTap;
  final IconData? icon;
  final Color foregroundColor;
  final Color backgroundColor;

  const StephansButton({
    Key? key,
    required this.foregroundColor,
    required this.backgroundColor,
    required this.label,
    required this.onTap,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: OutlinedButton.styleFrom(
        foregroundColor: foregroundColor,
        backgroundColor: backgroundColor,
      ),
      onPressed: onTap,
      child: Container(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            icon != null
                ? Icon(
                    icon,
                    size: 22,
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}
