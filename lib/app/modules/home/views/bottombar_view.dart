import 'package:bottom_bar_matu/bottom_bar/bottom_bar_bubble.dart';
import 'package:bottom_bar_matu/bottom_bar_item.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news/app/modules/home/controllers/bottombar_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class BottomBarView extends StatelessWidget {
  BottomBarView({super.key});
  final bottomBarController = Get.find<BottomBarController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Obx(() =>
          bottomBarController.pages[bottomBarController.selectedIndex.value]),
      bottomNavigationBar: BottomBarBubble(
          color: const Color(0XFF3F0E70),
          bubbleSize: 20,
          // backgroundColor: Colors.black,
          selectedIndex: bottomBarController.selectedIndex.value,
          items: [
            BottomBarItem(
              iconData: CupertinoIcons.home,
              // label: 'Home',
            ),
            BottomBarItem(
              iconData: CupertinoIcons.list_bullet,
              // label: 'Chat',
            ),
            BottomBarItem(
              iconData: CupertinoIcons.globe,
              // label: 'Notification',
            ),
            BottomBarItem(
              iconData: CupertinoIcons.heart,
              // label: 'Calendar',
            ),
          ],
          onSelect: bottomBarController.onItemTapped),
    );
  }
}
