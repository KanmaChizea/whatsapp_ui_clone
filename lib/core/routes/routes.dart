import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/core/constants/colors.dart';
import 'package:whatsapp_ui_clone/home/screens/home.dart';
import 'package:whatsapp_ui_clone/settings/screens/chats/chats_screen.dart';
import 'package:whatsapp_ui_clone/settings/screens/help/help_screen.dart';
import 'package:whatsapp_ui_clone/settings/screens/notification/notification_screen.dart';
import 'package:whatsapp_ui_clone/settings/screens/storage%20and%20data/storage_screen.dart';

import '../../settings/screens/account/account_screen.dart';
import '../../settings/screens/account/change_number_screen.dart';
import '../../settings/screens/account/delete_account_screen.dart';
import '../../settings/screens/account/privacy_screen.dart';
import '../../settings/screens/account/request_account_info_screen.dart';
import '../../settings/screens/account/security_screen.dart';
import '../../settings/screens/account/two_step_verification_screen.dart';
import '../../settings/screens/settings_screen.dart';

class Routes {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const Home());
      // case 'group':
      // case 'broadcast':
      // case 'devices':
      // case 'starred':
      case 'settings':
        return MaterialPageRoute(builder: (context) => const SettingsScreen());
      // case 'status privacy':
      // case 'select contact':
      case 'account':
        return MaterialPageRoute(builder: (context) => const AccountScreen());
      case 'chats':
        return MaterialPageRoute(builder: (context) => const ChatsScreen());
      case 'notifications':
        return MaterialPageRoute(
            builder: (context) => const NotificationScreen());
      case 'storage and data':
        return MaterialPageRoute(builder: (context) => const StorageScreen());
      case 'help':
        return MaterialPageRoute(builder: (context) => const HelpScreen());
      // case 'contact us':
      // case 'manage storage':
      // case 'network usage':
      // case 'backup':
      case 'privacy':
        return MaterialPageRoute(builder: (context) => const PrivacyScreen());
      case 'security':
        return MaterialPageRoute(builder: (context) => const SecurityScreen());
      case 'verification':
        return MaterialPageRoute(
            builder: (context) => const TwoStepVerificationScreen());
      case 'change no':
        return MaterialPageRoute(
            builder: (context) => const ChangeNumberScreen());
      case 'account info':
        return MaterialPageRoute(
            builder: (context) => const RequestAccountInfoScreen());
      case 'delete account':
        return MaterialPageRoute(
            builder: (context) => const DeleteAccountScreen());

      default:
        return _errorPage();
    }
  }

  static Route<dynamic> _errorPage() {
    return MaterialPageRoute(
        builder: (context) => Scaffold(
              body: Center(
                child: Column(
                  children: [
                    const Icon(Icons.error, size: 30, color: darkTealGreen),
                    Text('Error 404',
                        style: Theme.of(context).textTheme.headline1),
                    Text('Page not found',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            ?.copyWith(color: darkGrey))
                  ],
                ),
              ),
            ));
  }
}
