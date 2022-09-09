import 'package:flutter/cupertino.dart';

class SettingsModel {
  final String title;
  final String subtitle;
  final IconData icon;
  final Function()? onPressed;
  SettingsModel({
    required this.title,
    required this.subtitle,
    required this.icon,
    this.onPressed,
  });
}
