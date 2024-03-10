import 'package:flutter/material.dart';
import 'package:flutter_news/app/modules/category/views/category_view.dart';
import 'package:flutter_news/app/modules/fav/views/fav_view.dart';
import 'package:flutter_news/app/modules/home/views/home_view.dart';
import 'package:flutter_news/app/modules/world/views/world_view.dart';
import 'package:get/get.dart';

class BottomBarController extends GetxController {
  RxInt selectedIndex = 0.obs;

  List<Widget> pages = [
    const HomeView(),
    const CategoryView(),
    const WorldView(),
    const FavView()
  ];

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }
}
