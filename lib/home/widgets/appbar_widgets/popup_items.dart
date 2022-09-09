import 'package:flutter/material.dart';

class PopUpItems extends PopupMenuItem {
  PopUpItems({
    Key? key,
    required this.label,
    required this.val,
  }) : super(
          key: key,
          value: val,
          padding: const EdgeInsets.fromLTRB(16, 12, 70, 12),
          child: Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.w200, fontSize: 16),
          ),
        );

  final String label;
  final int val;
}
