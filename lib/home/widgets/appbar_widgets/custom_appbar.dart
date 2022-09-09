import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../state_management/app_bar/app_bar_cubit.dart';
import 'default_appbar.dart';
import 'search.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({
    Key? key,
    required this.child,
    required this.tabBarController,
  }) : super(key: key);

  final TabBarView child;
  final TabController tabBarController;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> preferredSize;
  late AnimationController scaleController;
  late Animation<double> scale;

  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    preferredSize = Tween<double>(begin: 110, end: 40).animate(controller);
    scaleController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    scale =
        CurvedAnimation(parent: scaleController, curve: Curves.fastOutSlowIn);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppBarCubit, AppBarState>(
      listener: (context, state) {
        if (state == AppBarState.search) {
          controller.forward();
          scaleController.forward();
        }
        if (state == AppBarState.general) {
          controller.reverse();
          scaleController.reverse();
        }
      },
      child: AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          return BlocBuilder<AppBarCubit, AppBarState>(
              builder: (context, state) {
            return Stack(
              children: [
                SizedBox(
                    height: preferredSize.value,
                    child: DefaultAppBar(controller: widget.tabBarController)),
                ScaleTransition(
                  scale: scale,
                  alignment: const Alignment(0.7, 0),
                  child: const SizedBox(height: 56, child: SearchAppBar()),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 56),
                    padding: const EdgeInsets.all(16),
                    child: widget.child)
              ],
            );
          });
        },
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    scaleController.dispose();
    super.dispose();
  }
}
