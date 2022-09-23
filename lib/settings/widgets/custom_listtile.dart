import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    required this.leadingIcon,
    required this.title,
    required this.subtitle,
    this.iconColor,
    this.titleStyle,
  }) : super(key: key);

  final IconData leadingIcon;
  final String title;
  final Widget subtitle;
  final Color? iconColor;
  final TextStyle? titleStyle;

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Icon(
        leadingIcon,
        color: iconColor,
      ),
      const SizedBox(width: 20),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: titleStyle ?? Theme.of(context).textTheme.bodyText2),
          const SizedBox(height: 10),
          subtitle
        ],
      ),
    ]);
  }
}
