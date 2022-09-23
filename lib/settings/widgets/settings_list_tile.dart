import 'package:flutter/material.dart';

import 'package:whatsapp_ui_clone/settings/data/model/privacy_model.dart';

class SettingsListTile extends StatelessWidget {
  const SettingsListTile({
    Key? key,
    required this.privacyModel,
  }) : super(key: key);
  final PrivacyModel privacyModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(privacyModel.title,
          style: Theme.of(context).textTheme.bodyText2),
      subtitle: Text(privacyModel.subtitle,
          style: Theme.of(context).textTheme.caption?.copyWith(fontSize: 13)),
      trailing: privacyModel.trailing,
    );
  }
}
