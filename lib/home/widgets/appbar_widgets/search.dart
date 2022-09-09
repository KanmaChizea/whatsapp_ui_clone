import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_ui_clone/core/constants/colors.dart';
import 'package:whatsapp_ui_clone/state_management/app_bar/app_bar_cubit.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: white,
      foregroundColor: darkGrey,
      leading: BackButton(
        onPressed: () => context.read<AppBarCubit>().switchToDefault(),
      ),
      leadingWidth: 30,
      title: TextField(
        showCursor: true,
        cursorColor: darkTealGreen,
        cursorHeight: 26,
        decoration: InputDecoration(
            hintStyle:
                TextStyle(fontSize: 18, color: darkGrey.withOpacity(0.7)),
            hintText: 'Search...',
            border: InputBorder.none),
      ),
    );
  }
}
