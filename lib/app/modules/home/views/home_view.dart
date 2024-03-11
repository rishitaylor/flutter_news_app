// ignore_for_file: unnecessary_import

import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_news/app/common_widgets/gradient_container.dart';
import 'package:flutter_news/app/common_widgets/home_builder.dart';
import 'package:flutter_news/app/common_widgets/shimmer_widget.dart';
import 'package:flutter_news/app/models/homefeed_model.dart';
import 'package:flutter_news/app/modules/home/controllers/home_controller.dart';
import 'package:flutter_news/app/theme/my_font.dart';
import 'package:flutter_news/app/utils/assets_const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/state_manager.dart';
// import 'package:shimmer/shimmer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Discover",
                style: MyTheme.myTheme.textTheme.displayLarge,
              ),
              Text(
                "Read your favourite news articles in just one click",
                style: MyTheme.myTheme.textTheme.displaySmall,
              ),
              const GradientContainer(),
              SizedBox(
                height: 25.h,
              ),
              Text(
                "Top headlines from India",
                style: MyTheme.myTheme.textTheme.labelMedium,
              ),
              // SizedBox(
              //   height: 25.h,
              // ),

              Obx(() => controller.isLoading.value
                  ? shimmerHome()
                  : ListView.separated(
                      physics: const ScrollPhysics(),
                      itemCount: controller.homefeedModel.articles?.length ?? 0,
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
                                  maxLines:
                                      controller.isReadMoreList[index] ? 10 : 2,
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
    ));
  }
}
