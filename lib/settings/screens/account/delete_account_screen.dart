import 'package:flutter/material.dart';

import 'package:whatsapp_ui_clone/core/constants/colors.dart';
import 'package:whatsapp_ui_clone/core/constants/others.dart';

import '../../../core/widgets/bullet_list.dart';
import '../../widgets/custom_listtile.dart';

class DeleteAccountScreen extends StatelessWidget {
  const DeleteAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Delete account')),
      body: Padding(
        padding: kPadding,
        child: Column(
          children: [
            CustomListTile(
                leadingIcon: Icons.warning_rounded,
                title: 'Deleting your accout will:',
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(height: 10),
                    BulletListItem(item: 'Delete your account from WhatsApp'),
                    BulletListItem(item: 'Erase your message history'),
                    BulletListItem(item: 'Delete you from all WhatsApp groups'),
                  ],
                ),
                iconColor: red,
                titleStyle: Theme.of(context)
                    .textTheme
                    .bodyText2
                    ?.copyWith(color: red)),
            const Divider(indent: 60, height: 36),
            CustomListTile(
              leadingIcon: Icons.send_to_mobile_rounded,
              title: "Change number instead?",
              subtitle: ElevatedButton(
                  onPressed: () => Navigator.of(context).pushNamed('change no'),
                  // style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                  //     minimumSize:
                  //         MaterialStateProperty.all(const Size(20, 10))),
                  child: const Text('CHANGE NUMBER')),
            ),
            const Divider(height: 36),
            Padding(
              padding: const EdgeInsets.only(left: 44),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'To delete your account, confirm your country code and enter your phone number',
                      style: Theme.of(context).textTheme.bodyText2),
                  const SizedBox(height: 12),
                  Text('Country', style: Theme.of(context).textTheme.caption),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Nigeria',
                          style: Theme.of(context).textTheme.bodyText2),
                      const Icon(Icons.arrow_drop_down)
                    ],
                  ),
                  const SizedBox(height: 8),
                  Container(height: 1, color: Colors.black),
                  const SizedBox(height: 16),
                  Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Phone',
                            style: Theme.of(context).textTheme.caption),
                        const SizedBox(height: 8),
                        Text('+234',
                            style: Theme.of(context).textTheme.bodyText2),
                        const SizedBox(height: 8),
                        Container(height: 1, color: Colors.black),
                      ],
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('phone number',
                            style: Theme.of(context).textTheme.bodyText2),
                        const SizedBox(height: 8),
                        Container(height: 1, color: Colors.black),
                      ],
                    )
                  ]),
                  const SizedBox(height: 16),
                  ElevatedButton(
                      onPressed: () {},
                      style: Theme.of(context)
                          .elevatedButtonTheme
                          .style
                          ?.copyWith(
                              backgroundColor: MaterialStateProperty.all(red)),
                      child: const Text('DELETE MY ACCOUNT'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
