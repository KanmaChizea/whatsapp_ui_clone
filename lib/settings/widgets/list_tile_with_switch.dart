import 'package:flutter/material.dart';

class ListTileWithSwitch extends StatelessWidget {
  const ListTileWithSwitch({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(title, style: Theme.of(context).textTheme.bodyText2),
        subtitle: Text(subtitle, style: Theme.of(context).textTheme.caption),
        trailing: Switch(value: false, onChanged: (_) {}));
  }
}
