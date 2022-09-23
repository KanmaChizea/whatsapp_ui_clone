import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class TwoStepVerificationScreen extends StatelessWidget {
  const TwoStepVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Two-step verification')),
      body: Column(
        children: [
          const SizedBox(height: 16),
          CircleAvatar(
            radius: 60,
            backgroundColor: Colors.greenAccent.withOpacity(0.4),
            child: Stack(
              children: const [
                Center(
                  child: Icon(
                    Icons.password,
                    color: Color(0xff86ebd3),
                    size: 60,
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor: white,
                      radius: 30,
                    )),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Icon(
                      Icons.check_circle,
                      color: Color(0xff06ce9d),
                      size: 60,
                    ))
              ],
            ),
          ),
          const SizedBox(height: 24),
          Text(
            "Two-step verification is enabled. You'll need to enter your pin when registering your phone number with WhatsApp again",
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .caption
                ?.copyWith(color: darkGrey, fontSize: 13),
          ),
          const Divider(height: 24),
          ListTile(
              title: Text('Disable',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      ?.copyWith(color: darkGrey, fontSize: 13)),
              leading: const Icon(Icons.cancel_rounded)),
          ListTile(
              title: Text('Change password',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      ?.copyWith(color: darkGrey, fontSize: 13)),
              leading: const Icon(Icons.password_rounded)),
          ListTile(
              title: Text('Change email address',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      ?.copyWith(color: darkGrey, fontSize: 13)),
              leading: const Icon(Icons.email_rounded)),
        ],
      ),
    );
  }
}
