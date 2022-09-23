import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/core/constants/colors.dart';
import 'package:whatsapp_ui_clone/core/constants/others.dart';

class SecurityScreen extends StatelessWidget {
  const SecurityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Security')),
      body: Padding(
        padding: kPadding,
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.greenAccent.withOpacity(0.4),
              child: Stack(
                children: const [
                  Center(
                    child: Icon(
                      Icons.shield_rounded,
                      color: Color(0xff07cb9c),
                      size: 100,
                    ),
                  ),
                  Center(
                      child: Icon(
                    Icons.lock_rounded,
                    color: white,
                    size: 40,
                  ))
                ],
              ),
            ),
            const SizedBox(height: 24),
            RichText(
                text: TextSpan(
                    text:
                        'Messages and calls in end-to-end encrypted chats stay between you and the people you choose. Not even WhatsApp can read or listen to them. ',
                    style: Theme.of(context).textTheme.bodyText2,
                    children: [
                  TextSpan(
                      text: 'Learn more',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          ?.copyWith(color: Colors.blue))
                ])),
            const Divider(height: 36),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Show security notifications on this device',
                            style: Theme.of(context).textTheme.bodyText2),
                        const SizedBox(height: 10),
                        RichText(
                          text: TextSpan(
                              text:
                                  "Get notified when your security code changes for a contact's phone in an end-to-end encrypted chat. If you have multiple devices, this setting must be enabled on each device where you want to get notifications",
                              style: Theme.of(context).textTheme.caption,
                              children: [
                                TextSpan(
                                    text: ' Learn more',
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption
                                        ?.copyWith(color: Colors.blue))
                              ]),
                        )
                      ]),
                ),
                Switch(value: false, onChanged: (val) {})
              ],
            ),
          ],
        ),
      ),
    );
  }
}
