import 'package:flutter_news/app/modules/fav/controllers/fav_controller.dart';
import 'package:flutter_news/app/modules/world/controllers/world_controller.dart';
import 'package:get/get.dart';

class FavBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FavController>(
      () => FavController(),
    );
  }
}
