import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/settings/widgets/list_tile_with_switch.dart';
import 'package:whatsapp_ui_clone/settings/widgets/settings_header.dart';

class StorageScreen extends StatelessWidget {
  const StorageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Storage and data')),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
              minLeadingWidth: 0,
              leading: const Icon(Icons.folder),
              title: Text('Manage storage',
                  style: Theme.of(context).textTheme.bodyText2),
              subtitle:
                  Text('11.2 MB', style: Theme.of(context).textTheme.caption)),
          ListTile(
              minLeadingWidth: 0,
              leading: const Icon(Icons.data_usage_rounded),
              title: Text('Network usage',
                  style: Theme.of(context).textTheme.bodyText2),
              subtitle: Text(
                  '5.5 MB sent ${String.fromCharCode(8226)} 365.2 MB received',
                  style: Theme.of(context).textTheme.caption)),
          const Padding(
              padding: EdgeInsets.only(left: 44),
              child: ListTileWithSwitch(title: 'Use less data for calls')),
          const Divider(height: 24),
          Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SettingsHeader(title: 'Media auto-download'),
                  const SizedBox(height: 8),
                  Text('Voice messages are always automatically downloaded',
                      style: Theme.of(context).textTheme.caption)
                ],
              )),
          const SizedBox(height: 16),
          Padding(
              padding: const EdgeInsets.only(left: 44),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                      title: Text('When using mobile data',
                          style: Theme.of(context).textTheme.bodyText2),
                      subtitle: Text('No media',
                          style: Theme.of(context).textTheme.caption)),
                  const SizedBox(height: 16),
                  ListTile(
                      title: Text('When connected on Wi-Fi',
                          style: Theme.of(context).textTheme.bodyText2),
                      subtitle: Text('All media',
                          style: Theme.of(context).textTheme.caption)),
                  const SizedBox(height: 16),
                  ListTile(
                      title: Text('When roaming',
                          style: Theme.of(context).textTheme.bodyText2),
                      subtitle: Text('No media',
                          style: Theme.of(context).textTheme.caption)),
                ],
              )),
          const Divider(height: 24),
          Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SettingsHeader(title: 'Media upload quality'),
                  const SizedBox(height: 8),
                  Text('Choose the quality of media files to be sent',
                      style: Theme.of(context).textTheme.caption)
                ],
              )),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(left: 44),
            child: ListTile(
                title: Text('Photo upload quality',
                    style: Theme.of(context).textTheme.bodyText2),
                subtitle: Text('Best quality',
                    style: Theme.of(context).textTheme.caption)),
          ),
        ],
      )),
    );
  }
}
