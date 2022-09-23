import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/others.dart';

class RequestAccountInfoScreen extends StatelessWidget {
  const RequestAccountInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Request account info')),
        body: Padding(
            padding: kPadding,
            child: Column(children: [
              CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.greenAccent.withOpacity(0.4),
                  child: const Icon(
                    Icons.description_rounded,
                    color: Color(0xff07cb9c),
                    size: 100,
                  )),
              const SizedBox(height: 24),
              RichText(
                  text: TextSpan(
                      text:
                          "Create a report of your WhatsApp account information and settings, which you can access or port to another app. This report does not include your messages.",
                      style: Theme.of(context).textTheme.bodyText2,
                      children: [
                    TextSpan(
                        text: " Learn more",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            ?.copyWith(color: Colors.blue))
                  ])),
              const Divider(height: 36),
              const ListTile(
                leading: Icon(Icons.description_rounded),
                title: Text('Request report'),
              ),
              const Divider(height: 36),
            ])));
  }
}
