import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_ui_clone/core/constants/colors.dart';

import '../widgets/appbar_widgets/custom_appbar.dart';
import '../widgets/fab/fab_widgets.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController controller;
  static const initialIndex = 1;
  static const tabsCount = 4;
  final tabScales =
      List.generate(tabsCount, (index) => index == initialIndex ? 1.0 : 0.0);

  @override
  void initState() {
    controller = TabController(
        length: tabsCount, vsync: this, initialIndex: initialIndex);
    controller.animation?.addListener(() {
      setState(() {
        final animationValue = controller.animation!.value;
        final currentTabIndex = animationValue.round();
        final currentOffset = currentTabIndex - animationValue;
        for (int i = 0; i < tabsCount; i++) {
          if (i == currentTabIndex) {
            tabScales[i] = (0.5 - currentOffset.abs()) / 0.5;
          } else {
            tabScales[i] = 0.0;
          }
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(statusBarColor: lightTealGreen),
      child: Scaffold(
        floatingActionButton: FAButtons(tabScales: tabScales),
        body: SafeArea(
          child: CustomAppBar(
            tabBarController: controller,
            child: TabBarView(controller: controller, children: const [
              Center(child: Text('Camera')),
              Center(child: Text('Chats')),
              Center(child: Text('Status')),
              Center(child: Text('Calls')),
            ]),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
