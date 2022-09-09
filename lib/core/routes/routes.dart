import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/core/constants/colors.dart';
import 'package:whatsapp_ui_clone/home/screens/home.dart';
import 'package:whatsapp_ui_clone/settings/screens/settings_screen.dart';

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
      // case 'account':
      // case 'chats':
      // case 'notifications':
      // case 'storage and data':
      // case 'help':
      // case 'contact us':
      // case 'manage storage':
      // case 'network usage':
      // case 'backup':
      // case 'privacy':
      // case 'security':
      // case 'verification':
      // case 'change no':
      // case 'account info':
      // case 'delete account':

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
