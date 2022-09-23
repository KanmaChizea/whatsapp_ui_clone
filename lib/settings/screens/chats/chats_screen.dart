import 'package:flutter/material.dart';

import 'package:whatsapp_ui_clone/settings/widgets/settings_header.dart';

import '../../widgets/list_tile_with_switch.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chats')),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16, top: 16),
            child: SettingsHeader(title: 'Display'),
          ),
          ListTile(
              minLeadingWidth: 0,
              leading: const Icon(Icons.light_mode_rounded),
              title:
                  Text('Theme', style: Theme.of(context).textTheme.bodyText2),
              subtitle:
                  Text('Light', style: Theme.of(context).textTheme.caption)),
          ListTile(
              minLeadingWidth: 0,
              leading: const Icon(Icons.wallpaper_rounded),
              title: Text('Wallpaper',
                  style: Theme.of(context).textTheme.bodyText2)),
          const Divider(height: 24),
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: SettingsHeader(title: 'Chat settings'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 44, right: 16),
            child: Column(
              children: [
                const ListTileWithSwitch(
                    title: 'Enter is send',
                    subtitle: 'Enter key will send your message'),
                const ListTileWithSwitch(
                  title: 'Media Visibility',
                  subtitle:
                      'Show newly downloaded media in your device\'s gallery',
                ),
                ListTile(
                  title: Text('Font size',
                      style: Theme.of(context).textTheme.bodyText2),
                  subtitle: Text('Medium',
                      style: Theme.of(context).textTheme.caption),
                )
              ],
            ),
          ),
          const Divider(height: 24),
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: SettingsHeader(title: 'Archived chats'),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 44, right: 16),
              child: Column(children: [
                ListTile(
                    title: Text('Keep chats archived',
                        style: Theme.of(context).textTheme.bodyText2),
                    subtitle: Text(
                        'Archived chats will remain archived when you receive a new message',
                        style: Theme.of(context).textTheme.caption),
                    trailing: Switch(value: false, onChanged: (_) {})),
              ])),
          const Divider(height: 24),
          ListTile(
            leading: const Icon(Icons.cloud_upload_rounded),
            title: Text('Chat backup',
                style: Theme.of(context).textTheme.bodyText2),
          ),
          ListTile(
            leading: const Icon(Icons.history_rounded),
            title: Text('Chat history',
                style: Theme.of(context).textTheme.bodyText2),
          ),
          const SizedBox(height: 20)
        ],
      )),
    );
  }
}
