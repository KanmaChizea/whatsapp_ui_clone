import 'package:flutter/cupertino.dart';

class SettingsModel {
  final String title;
  final String subtitle;
  final IconData icon;
  final String routeName;
  const SettingsModel({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.routeName,
  });
}
