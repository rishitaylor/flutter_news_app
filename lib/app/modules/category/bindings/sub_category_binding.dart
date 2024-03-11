import 'package:flutter_news/app/modules/category/controllers/sub_category_controller.dart';
import 'package:get/get.dart';

class SubCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SubCategoryController>(
      () => SubCategoryController(),
    );
  }
}
