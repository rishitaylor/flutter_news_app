import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_news/app/models/homefeed_model.dart';
import 'package:flutter_news/app/routes/routes.dart';
import 'package:flutter_news/app/theme/my_font.dart';
import 'package:flutter_news/app/utils/assets_const.dart';
import 'package:flutter_news/app/utils/strings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});
  // final HomefeedModel homeFeed = Get.find<HomefeedModel>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Categories",
              style: MyTheme.myTheme.textTheme.displayLarge,
            ),
            Text(
              "Read variouse categories as per your intrest",
              style: MyTheme.myTheme.textTheme.displaySmall,
            ),
            SizedBox(
              height: 15.h,
            ),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: categoryList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 25, crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.toNamed(
                            Routes.SUB_CATEGORY,
                            arguments: categoryList[index],
                          );
                        },
                        child: Container(
                            height: 150.h,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.r)),
                                // color: Colors.red,
                                image: DecorationImage(
                                  scale: 1.0,
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/cat${index + 1}.png',
                                  ),
                                )),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    categoryList[index],
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.w700),
                                  )),
                            )),
                      )
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    ));
  }
}
