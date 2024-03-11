import 'package:flutter/material.dart';
import 'package:flutter_news/app/common_widgets/home_builder.dart';
import 'package:flutter_news/app/common_widgets/shimmer_widget.dart';
import 'package:flutter_news/app/modules/category/controllers/sub_category_controller.dart';
import 'package:flutter_news/app/theme/my_font.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SubCategoryView extends StatelessWidget {
  const SubCategoryView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(SubCategoryController());
    var categories = Get.arguments;
    // var categoryName = Get.arguments;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 15.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GradientText(
                    style: const TextStyle(
                        fontSize: 28, fontWeight: FontWeight.w600, height: 1),
                    '$categories releted articels',
                    colors: [
                      MyTheme.myTheme.colorScheme.primary,
                      MyTheme.myTheme.colorScheme.secondary,
                      MyTheme.myTheme.colorScheme.tertiary,
                    ]),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Read all articles related to the category of ${categories.toLowerCase()} and explore more categories as per your personal interests, preferences and enjoy reading.",
                  style: MyTheme.myTheme.textTheme.displaySmall,
                ),
                Obx(() => controller.isLoading.value
                    ? shimmerHome()
                    : ListView.separated(
                        physics: const ScrollPhysics(),
                        itemCount:
                            controller.homefeedModel.articles?.length ?? 0,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          final article =
                              controller.homefeedModel.articles![index];
                          final source =
                              controller.homefeedModel.articles![index].source;

                          return GestureDetector(
                            onTap: () {
                              controller.isReadMoreList[index] =
                                  !controller.isReadMoreList[index];
                            },
                            child: Builder(builder: (context) {
                              return Obx(
                                () => HomeBuilder(
                                    maxLines: controller.isReadMoreList[index]
                                        ? 10
                                        : 2,
                                    readMore: controller.isReadMoreList[index]
                                        ? 'read less'
                                        : 'read more',
                                    name: source!.name.toString(),
                                    title: article.title.toString(),
                                    img: article.urlToImage.toString()),
                              );
                            }),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const Divider();
                        },
                      ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
