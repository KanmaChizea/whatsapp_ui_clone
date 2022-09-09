import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class FAB extends StatelessWidget {
  final IconData icon;
  final Function()? onPressed;
  const FAB({
    Key? key,
    required this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: lightTealGreen,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
