import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/core/constants/colors.dart';
import 'package:whatsapp_ui_clone/settings/data/settings_list.dart';

import '../../core/constants/others.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: kPadding,
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 26,
                    backgroundColor: grey,
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Kanma',
                          style: Theme.of(context).textTheme.bodyText1),
                      const SizedBox(height: 8),
                      Text('Hey there! I am using WhatsApp',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              ?.copyWith(fontSize: 14))
                    ],
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.qr_code,
                    color: lightGreen,
                    size: 28,
                  )
                ],
              ),
            ),
            const Divider(height: 12),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 7,
                itemBuilder: (context, index) {
                  return ListTile(
                    iconColor: darkGrey,
                    title: Text(settingsList[index].title,
                        style: Theme.of(context).textTheme.bodyText2),
                    subtitle: Text(settingsList[index].subtitle,
                        style: Theme.of(context).textTheme.caption),
                    leading: Transform.rotate(
                        angle: index == 0 ? math.pi / 2 : 0,
                        child: Icon(settingsList[index].icon)),
                    onTap: settingsList[index].onPressed,
                  );
                }),
            const Text('from'),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.all_inclusive_rounded, color: darkGrey),
                SizedBox(width: 4),
                Text(
                  'Meta',
                  style: TextStyle(
                      color: darkGrey,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                )
              ],
            ),
            const SizedBox(height: 24)
          ],
        ),
      ),
    );
  }
}
