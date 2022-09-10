import 'package:flutter/material.dart';

import 'model/account_model.dart';
import 'model/settings_model.dart';

const List<SettingsModel> settingsList = [
  SettingsModel(
      title: 'Account',
      subtitle: 'Privacy, security, change number',
      icon: Icons.key_rounded,
      routeName: 'account'),
  SettingsModel(
      title: 'Chats',
      subtitle: 'Theme, wallpapers, chat histroy',
      icon: Icons.message_rounded,
      routeName: ''),
  SettingsModel(
      title: 'Notifications',
      subtitle: 'Message, group & call tones',
      icon: Icons.notifications_rounded,
      routeName: ''),
  SettingsModel(
      title: 'Storage and data',
      subtitle: 'Network usage, auto-download',
      icon: Icons.data_usage_rounded,
      routeName: ''),
  SettingsModel(
      title: 'App language',
      subtitle: 'English (phone\'s language)',
      icon: Icons.language_rounded,
      routeName: ''),
  SettingsModel(
      title: 'Help',
      subtitle: 'Help centre,contact us, privacy policy',
      icon: Icons.help_outline_rounded,
      routeName: ''),
  SettingsModel(
      title: 'Invite friends',
      subtitle: '',
      icon: Icons.people_rounded,
      routeName: ''),
];

const List<AccountModel> accountList = [
  AccountModel(title: 'Privacy', icon: Icons.lock_rounded, routeName: ''),
  AccountModel(title: 'Security', icon: Icons.security_rounded, routeName: ''),
  AccountModel(
      title: 'Two-step verification',
      icon: Icons.password_rounded,
      routeName: ''),
  AccountModel(
      title: 'Change number',
      icon: Icons.send_to_mobile_rounded,
      routeName: ''),
  AccountModel(
      title: 'Request account info',
      icon: Icons.description_rounded,
      routeName: ''),
  AccountModel(
      title: 'Delete my account', icon: Icons.delete_rounded, routeName: ''),
];
