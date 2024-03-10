import 'package:flutter_news/app/modules/world/controllers/world_controller.dart';
import 'package:get/get.dart';

class WorldViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WorldViewController>(
      () => WorldViewController(),
    );
  }
}
