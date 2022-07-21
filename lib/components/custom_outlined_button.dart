import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Size fixedSize;
  final Color borderColor;
  final Widget child;
  const CustomOutlinedButton(
      {Key? key,
      required this.onPressed,
      required this.fixedSize,
      required this.borderColor,
      required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          fixedSize: fixedSize,
          side: BorderSide(color: borderColor, width: 2),
        ),
        child: child);
  }
}
