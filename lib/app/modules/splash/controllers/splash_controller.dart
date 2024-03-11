import 'dart:async';

import 'package:flutter_news/app/routes/routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  Future<void> initializeAndRedirect() async {
    Timer(const Duration(seconds: 2), () {});
    Get.offAll(Routes.BOTTOM_BAR);
  }

  @override
  void onReady() {
    // TODO: implement onReady
    initializeAndRedirect();
    super.onReady();
  }
}
