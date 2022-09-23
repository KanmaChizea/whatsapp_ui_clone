import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/settings/widgets/list_tile_with_switch.dart';
import 'package:whatsapp_ui_clone/settings/widgets/settings_header.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notifications')),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ListTileWithSwitch(
              title: 'Conversation tones',
              subtitle: 'Play sounds for incoming and outgoing messages'),
          const Divider(height: 24),
          const Padding(
              padding: EdgeInsets.only(left: 16),
              child: SettingsHeader(title: 'Messages')),
          ListTile(
              title: Text('Notification tone',
                  style: Theme.of(context).textTheme.bodyText2),
              subtitle: Text('Default (MessageSent.ogg)',
                  style: Theme.of(context).textTheme.caption)),
          ListTile(
              title:
                  Text('Vibrate', style: Theme.of(context).textTheme.bodyText2),
              subtitle:
                  Text('Default', style: Theme.of(context).textTheme.caption)),
          ListTile(
              title: Text('Popup notification',
                  style: Theme.of(context).textTheme.bodyText2),
              subtitle: Text('Not available',
                  style: Theme.of(context).textTheme.caption)),
          ListTile(
              title:
                  Text('Light', style: Theme.of(context).textTheme.bodyText2),
              subtitle:
                  Text('White', style: Theme.of(context).textTheme.caption)),
          const ListTileWithSwitch(
              title: 'Use priority notifications',
              subtitle:
                  'Show previews of notifications at the top of the screen'),
          const ListTileWithSwitch(
              title: 'Reaction Notifications',
              subtitle:
                  'Show notifications for reactions to messages you send'),
          const Divider(height: 24),
          const Padding(
              padding: EdgeInsets.only(left: 16),
              child: SettingsHeader(title: 'Groups')),
          ListTile(
              title: Text('Notification tone',
                  style: Theme.of(context).textTheme.bodyText2),
              subtitle: Text('Default (MessageSent.ogg)',
                  style: Theme.of(context).textTheme.caption)),
          ListTile(
              title:
                  Text('Vibrate', style: Theme.of(context).textTheme.bodyText2),
              subtitle:
                  Text('Default', style: Theme.of(context).textTheme.caption)),
          ListTile(
              title:
                  Text('Light', style: Theme.of(context).textTheme.bodyText2),
              subtitle:
                  Text('White', style: Theme.of(context).textTheme.caption)),
          const ListTileWithSwitch(
              title: 'Use priority notifications',
              subtitle:
                  'Show previews of notifications at the top of the screen'),
          const ListTileWithSwitch(
              title: 'Reaction Notifications',
              subtitle:
                  'Show notifications for reactions to messages you send'),
          const Divider(height: 24),
          const Padding(
              padding: EdgeInsets.only(left: 16),
              child: SettingsHeader(title: 'Calls')),
          ListTile(
              title: Text('Ringtone',
                  style: Theme.of(context).textTheme.bodyText2),
              subtitle: Text('Default (Orange.ogg)',
                  style: Theme.of(context).textTheme.caption)),
          ListTile(
              title:
                  Text('Vibrate', style: Theme.of(context).textTheme.bodyText2),
              subtitle:
                  Text('Default', style: Theme.of(context).textTheme.caption)),
        ],
      )),
    );
  }
}
