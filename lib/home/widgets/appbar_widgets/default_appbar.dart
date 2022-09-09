import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/colors.dart';
import '../../../state_management/app_bar/app_bar_cubit.dart';
import 'popup_items.dart';

class DefaultAppBar extends StatelessWidget {
  final TabController controller;
  const DefaultAppBar({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = (MediaQuery.of(context).size.width - 36) / 3;

    return AppBar(
      leadingWidth: 0,
      title: const Text(
        'WhatsApp',
      ),
      actions: [
        IconButton(
            onPressed: () {
              context.read<AppBarCubit>().switchToSearch();
            },
            icon: const Icon(Icons.search)),
        PopupMenuButton(
          onSelected: (result) {
            if (result == 0) {
              Navigator.of(context).pushNamed('settings');
            }
          },
          itemBuilder: (context) {
            switch (controller.index) {
              case 1:
                return [
                  PopUpItems(val: 1, label: 'New group'),
                  PopUpItems(val: 2, label: 'New broadcast'),
                  PopUpItems(val: 3, label: 'Linked devices'),
                  PopUpItems(val: 4, label: 'Starred messages'),
                  PopUpItems(val: 0, label: 'Settings')
                ];
              case 2:
                return [
                  PopUpItems(val: 0, label: 'Status privacy'),
                  PopUpItems(val: 0, label: 'Settings'),
                ];
              case 3:
                return [PopUpItems(val: 0, label: 'Settings')];
              default:
                return [];
            }
          },
        )
      ],
      bottom: TabBar(
          controller: controller,
          isScrollable: true,
          indicatorColor: white,
          indicatorWeight: 3,
          onTap: (value) {
            controller.animateTo(value);
          },
          tabs: [
            const Tab(icon: Icon(Icons.camera_alt)),
            SizedBox(width: width, child: const Tab(text: 'CHATS')),
            SizedBox(width: width, child: const Tab(text: 'STATUS')),
            SizedBox(width: width, child: const Tab(text: 'CALLS')),
          ]),
    );
  }
}
