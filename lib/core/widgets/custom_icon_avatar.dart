import 'package:flutter/material.dart';

class CustomIconAvatar extends StatelessWidget {
  const CustomIconAvatar({
    super.key,
    required this.icon,
    required this.color,
    this.colorIcon,
    this.radius,
    this.sizeIcon,
  });
  final IconData icon;
  final Color color;
  final Color? colorIcon;
  final double? radius;
  final double? sizeIcon;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius == null ? 21 : radius,
      backgroundColor: color,
      child: Icon(
        icon,
        color: colorIcon == null ? Colors.black : colorIcon,
        size: sizeIcon,
      ),
    );
  }
}
