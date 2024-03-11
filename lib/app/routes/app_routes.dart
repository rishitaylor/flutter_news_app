import 'package:flutter_news/app/modules/category/bindings/category_binding.dart';
import 'package:flutter_news/app/modules/category/bindings/sub_category_binding.dart';
import 'package:flutter_news/app/modules/category/views/category_view.dart';
import 'package:flutter_news/app/modules/category/views/sub_category_view.dart';
import 'package:flutter_news/app/modules/fav/bindings/fav_binding.dart';
import 'package:flutter_news/app/modules/fav/views/fav_view.dart';
import 'package:flutter_news/app/modules/home/bindings/bottombar_binding.dart';
import 'package:flutter_news/app/modules/home/views/bottombar_view.dart';
import 'package:flutter_news/app/modules/splash/bindings/splash_binding.dart';
import 'package:flutter_news/app/modules/splash/views/splash_view.dart';
import 'package:flutter_news/app/modules/world/bindings/world_binding.dart';
import 'package:flutter_news/app/modules/world/views/world_view.dart';
import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';

import '../modules/home/views/home_view.dart';
import 'routes.dart';

class AppPages {
  AppPages._();
  static const INITIAL = Routes.BOTTOM_BAR;

  static final routes = [
    GetPage(
      name: Routes.BOTTOM_BAR,
      page: () => BottomBarView(),
      binding: BottomBarBinding(),
    ),
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashView(),
      binding: SplashViewBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.CATEGORY,
      page: () => const CategoryView(),
      binding: CategoryBinding(),
    ),
    GetPage(
      name: Routes.SUB_CATEGORY,
      page: () => const SubCategoryView(),
      binding: SubCategoryBinding(),
    ),
    GetPage(
      name: Routes.WORLD,
      page: () => const WorldView(),
      binding: WorldViewBinding(),
    ),
    GetPage(
      name: Routes.FAV,
      page: () => const FavView(),
      binding: FavBinding(),
    ),
  ];
}
