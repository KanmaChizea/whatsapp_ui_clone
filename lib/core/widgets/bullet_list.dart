import 'package:flutter/material.dart';

class BulletListItem extends StatelessWidget {
  final String item;
  const BulletListItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: Text("${String.fromCharCode(8226)} $item",
          style: Theme.of(context).textTheme.caption),
    );
  }
}
