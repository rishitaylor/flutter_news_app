import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

Widget shimmerHome() {
  return ListView.builder(
    shrinkWrap: true,
    itemCount: 20,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Row(
            children: [
              Container(
                width: 118,
                height: 118,
                color: Colors.white,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(height: 15.h, color: Colors.white),
                    const SizedBox(height: 5),
                    Container(height: 40.h, color: Colors.white),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            width: 80.w, height: 40.h, color: Colors.white),
                        Container(
                            width: 30.w, height: 30.h, color: Colors.white),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}

// Widget shimmerEffect() {
//   return Animate(
//     effects: const [BlurEffect(duration: Duration(seconds: 5))],
//     child: SizedBox(
//       height: 500.h,
//     ).animate().shimmer(
//         color: Colors.red,
//         duration: const Duration(seconds: 3),
//         curve: Curves.fastEaseInToSlowEaseOut),
//   );
// }
