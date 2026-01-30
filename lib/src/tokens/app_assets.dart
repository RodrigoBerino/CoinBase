import 'package:flutter/material.dart';

abstract class AppAssets {
  //icons
  static const IconData home = Icons.home_filled;

  //illustrations
  static const String mailIllustration = "./assets/illustration/mail.svg";
}

class DsIcon extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color? color;

  const DsIcon({super.key, required this.icon, this.size = 24, this.color});

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
      color: color ?? Theme.of(context).iconTheme.color,
    );
  }
}
