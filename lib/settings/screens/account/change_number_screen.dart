import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/core/constants/others.dart';


class ChangeNumberScreen extends StatelessWidget {
  const ChangeNumberScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Change number')),
      body: Padding(
        padding: kPadding,
        child: Column(
          children: [
            const SizedBox(height: 16),
            CircleAvatar(
                radius: 60,
                backgroundColor: Colors.greenAccent.withOpacity(0.4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.sim_card_rounded,
                        color: Color(0xff06ce9d), size: 40),
                    Icon(Icons.more_horiz_rounded,
                        color: Color(0xff06ce9d), size: 30),
                    Icon(Icons.sim_card_rounded,
                        color: Color(0xff06ce9d), size: 40),
                  ],
                )),
            const SizedBox(height: 24),
            Text(
                "Changing your phone number will migrate your account info, groups & settings",
                style: Theme.of(context).textTheme.bodyText2),
            const SizedBox(height: 12),
            Text(
              "Before proceeding, please confirm that you are able to receive SMS or calls at your new number",
              style: Theme.of(context).textTheme.caption,
            ),
            const SizedBox(height: 12),
            Text(
              "If you have bpth a new phone & a new number, first change your number on your old phone",
              style: Theme.of(context).textTheme.caption,
            ),
            const Spacer(),
            ElevatedButton(onPressed: () {}, child: const Text('NEXT'))
          ],
        ),
      ),
    );
  }
}
