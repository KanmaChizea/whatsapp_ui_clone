import 'package:flutter/material.dart';

import 'settings_model.dart';

List<SettingsModel> settingsList = [
  SettingsModel(
      title: 'Account',
      subtitle: 'Privacy, security, change number',
      icon: Icons.key_rounded,
      onPressed: () {}),
  SettingsModel(
      title: 'Chats',
      subtitle: 'Theme, wallpapers, chat histroy',
      icon: Icons.message_rounded,
      onPressed: () {}),
  SettingsModel(
      title: 'Notifications',
      subtitle: 'Message, group & call tones',
      icon: Icons.notifications_rounded,
      onPressed: () {}),
  SettingsModel(
      title: 'Storage and data',
      subtitle: 'Network usage, auto-download',
      icon: Icons.data_usage_rounded,
      onPressed: () {}),
  SettingsModel(
      title: 'App language',
      subtitle: 'English (phone\'s language)',
      icon: Icons.language_rounded,
      onPressed: () {}),
  SettingsModel(
      title: 'Help',
      subtitle: 'Help centre,contact us, privacy policy',
      icon: Icons.help_outline_rounded,
      onPressed: () {}),
  SettingsModel(
      title: 'Invite friends',
      subtitle: '',
      icon: Icons.people_rounded,
      onPressed: () {}),
];
