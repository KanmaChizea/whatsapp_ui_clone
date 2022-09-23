import 'package:flutter/material.dart';

class PrivacyModel {
  final String title;
  final String subtitle;
  final Widget? trailing;
  const PrivacyModel({
    required this.title,
    required this.subtitle,
    this.trailing,
  });
}
