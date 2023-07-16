import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final Color colorBackground;
  final Color colorForeground;
  final Color? colorBorder;
  final String imgLink;
  final VoidCallback onTap;

  const ButtonWidget({
    super.key,
    required this.title,
    required this.imgLink,
    required this.onTap,
    required this.colorBackground,
    required this.colorForeground,
    this.colorBorder,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        style: OutlinedButton.styleFrom(
          elevation: 10,
          shadowColor: Colors.black,
          backgroundColor: colorBackground,
          foregroundColor: colorForeground,
          side: BorderSide(color: colorBorder ?? const Color(0xFF1B1F26)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(45),
          ),
        ),
        onPressed: onTap,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imgLink,
              width: 35.0,
            ),
            const SizedBox(
              width: 4.0,
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
