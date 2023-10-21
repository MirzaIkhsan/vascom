import 'package:flutter/material.dart';
import 'package:vascom/utils/color.utils.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key, required this.scaffoldKey});

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      pinned: true,
      elevation: 0,
      leading: GestureDetector(
        onTap: () {
          scaffoldKey.currentState!.openEndDrawer();
        },
        child: const Icon(
          Icons.menu,
          color: ColorUtils.deepblue,
        ),
      ),
      actions: const [
        Icon(
          Icons.shopping_cart,
          color: ColorUtils.deepblue,
        ),
        SizedBox(width: 16),
        Icon(
          Icons.notifications,
          color: ColorUtils.deepblue,
        ),
        SizedBox(width: 16),
      ],
    );
  }
}
