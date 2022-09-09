import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import 'fab.dart';

class FAButtons extends StatefulWidget {
  const FAButtons({
    Key? key,
    required this.tabScales,
  }) : super(key: key);

  final List<double> tabScales;

  @override
  State<FAButtons> createState() => _FAButtonsState();
}

class _FAButtonsState extends State<FAButtons>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> animation;

  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    animation = Tween(begin: const Offset(0, 65), end: const Offset(0, 0))
        .animate(controller);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      final indexOfCurrentFab =
          widget.tabScales.indexWhere((fabScale) => fabScale != 0);

      switch (indexOfCurrentFab) {
        case 1:
          controller.reset();
          return FAB(
            onPressed: () {},
            icon: Icons.message_rounded,
          );
        case 2:
          controller.forward();
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AnimatedBuilder(
                animation: animation,
                builder: (context, child) => Transform.translate(
                  offset: animation.value,
                  child: child,
                ),
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: grey,
                  child: const Icon(Icons.edit, color: darkGrey),
                ),
              ),
              const SizedBox(height: 12),
              FAB(
                onPressed: () {},
                icon: Icons.camera_alt_rounded,
              ),
            ],
          );
        case 3:
          controller.reset();
          return FAB(onPressed: () {}, icon: Icons.add_call);
        default:
          return Container();
      }
    });
  }

  @override
  void dispose() {
    controller.reverse();
    controller.dispose();
    super.dispose();
  }
}
