import 'package:flutter_news/app/modules/splash/controllers/splash_controller.dart';
import 'package:get/get.dart';

class SplashViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
      () => SplashController(),
    );
  }
}
