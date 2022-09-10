import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/core/constants/colors.dart';
import 'package:whatsapp_ui_clone/settings/data/constants.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Account')),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(accountList[index].title,
                  style: Theme.of(context).textTheme.bodyText2),
              leading: Icon(accountList[index].icon, color: darkGrey),
              onTap: () {
                Navigator.pushNamed(context, accountList[index].routeName);
              },
            );
          }),
    );
  }
}
