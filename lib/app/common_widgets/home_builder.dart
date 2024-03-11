import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_news/app/modules/home/controllers/home_controller.dart';
import 'package:flutter_news/app/theme/my_font.dart';
import 'package:flutter_news/app/utils/assets_const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class HomeBuilder extends StatelessWidget {
  String name;
  String title;
  String img;
  int maxLines;
  String readMore;
  HomeBuilder(
      {super.key,
      required this.name,
      required this.title,
      required this.img,
      required this.maxLines,
      required this.readMore});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          errorBuilder: (context, error, stackTrace) => Image.network(
            Assets.placeholder,
            width: 118,
            height: 118,
            fit: BoxFit.cover,
          ),
          img,
          width: 118,
          height: 118,
          fit: BoxFit.cover,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(overflow: TextOverflow.ellipsis, name),
                Text(
                  maxLines: maxLines,
                  // maxLines: controller.isReadMoreList[index] ? 10 : 2,
                  overflow: TextOverflow.ellipsis,
                  title,
                  style: MyTheme.myTheme.textTheme.displayMedium,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.r))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          readMore,
                          style: MyTheme.myTheme.textTheme.labelSmall,
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border_rounded))
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
