import 'package:flutter/material.dart';

import 'model/account_model.dart';
import 'model/privacy_model.dart';
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
      routeName: 'chats'),
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
  AccountModel(
      title: 'Privacy', icon: Icons.lock_rounded, routeName: 'privacy'),
  AccountModel(
      title: 'Security', icon: Icons.security_rounded, routeName: 'security'),
  AccountModel(
      title: 'Two-step verification',
      icon: Icons.password_rounded,
      routeName: 'verification'),
  AccountModel(
      title: 'Change number',
      icon: Icons.send_to_mobile_rounded,
      routeName: 'change no'),
  AccountModel(
      title: 'Request account info',
      icon: Icons.description_rounded,
      routeName: 'account info'),
  AccountModel(
      title: 'Delete my account',
      icon: Icons.delete_rounded,
      routeName: 'delete account'),
];

const List<PrivacyModel> privacyList = [
  PrivacyModel(title: 'Last seen', subtitle: 'Nobody'),
  PrivacyModel(title: 'Profile photo', subtitle: 'Everyone'),
  PrivacyModel(title: 'About', subtitle: 'Everyone'),
  PrivacyModel(title: 'Status', subtitle: 'My contacts'),
  PrivacyModel(
    title: 'Read receipts',
    subtitle:
        "If turned off, you won't send or receive Read receipts./nRead receipts are always sent for group chats",
  ),
  PrivacyModel(
      title: 'Default message timer',
      subtitle: 'Start new chats with disappearing messages set to your timer',
      trailing: Text('Off')),
  PrivacyModel(title: 'Groups', subtitle: 'My contacts'),
  PrivacyModel(title: 'Live location', subtitle: 'None'),
  PrivacyModel(title: 'Blocked contacts', subtitle: '2'),
  PrivacyModel(title: 'Fingerprint lock', subtitle: 'Disabled'),
];
