import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Help')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
              minLeadingWidth: 0,
              leading: const Icon(Icons.help_outline_rounded),
              title: Text('Help Center',
                  style: Theme.of(context).textTheme.bodyText2)),
          ListTile(
              minLeadingWidth: 0,
              leading: const Icon(Icons.people_rounded),
              title: Text('Contact us',
                  style: Theme.of(context).textTheme.bodyText2),
              subtitle: Text('Questions? Need helo?',
                  style: Theme.of(context).textTheme.caption)),
          ListTile(
              minLeadingWidth: 0,
              leading: const Icon(Icons.description_rounded),
              title: Text('Terms and Privacy Policy',
                  style: Theme.of(context).textTheme.bodyText2)),
          ListTile(
              minLeadingWidth: 0,
              leading: const Icon(Icons.info_outline_rounded),
              title: Text('App info',
                  style: Theme.of(context).textTheme.bodyText2)),
        ],
      ),
    );
  }
}
