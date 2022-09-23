import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/core/constants/others.dart';
import 'package:whatsapp_ui_clone/settings/data/constants.dart';
import 'package:whatsapp_ui_clone/settings/widgets/settings_header.dart';
import 'package:whatsapp_ui_clone/settings/widgets/settings_list_tile.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Privacy')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: kPadding,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SettingsHeader(
                          title: 'Who can see my personal info'),
                      const SizedBox(height: 12),
                      Text(
                          'If you dont share your last seen, you won\'t be able to see other people\'s last seen',
                          style: Theme.of(context).textTheme.caption),
                    ])),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (index == 5) const Divider(),
                    if (index == 5)
                      const Padding(
                          padding: kPadding,
                          child:
                              SettingsHeader(title: 'Disappearing messages')),
                    SettingsListTile(privacyModel: privacyList[index]),
                    if (index == 5) const Divider(height: 24),
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
