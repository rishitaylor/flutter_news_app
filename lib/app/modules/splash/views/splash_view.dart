import 'package:flutter/material.dart';
import 'package:flutter_news/app/modules/splash/controllers/splash_controller.dart';
import 'package:flutter_news/app/utils/assets_const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../../theme/my_font.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //image asset
            Image.asset(
              Assets.splashImg,
              width: 340.sp,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Flutter", style: MyTheme.myTheme.textTheme.displayLarge),
                GradientText("News",
                    style: const TextStyle(
                      letterSpacing: -.5,
                      fontSize: 38,
                      fontWeight: FontWeight.w600,
                    ),
                    colors: [
                      MyTheme.myTheme.colorScheme.primary,
                      MyTheme.myTheme.colorScheme.secondary,
                      MyTheme.myTheme.colorScheme.tertiary,
                    ])
              ],
            ),

            const SizedBox(height: 20),

            //description about app
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'Introducing Flutter News 📰: Your go-to app for breaking news and in-depth analyses tailored to your interests! Stay informed effortlessly with personalized updates, bookmark articles, and engage with a vibrant community. 💡📱',
                textAlign: TextAlign.center,
                style: MyTheme.myTheme.textTheme.displaySmall,
              ),
            ),

            const SizedBox(height: 100),

            LoadingAnimationWidget.waveDots(
                color: MyTheme.myTheme.colorScheme.secondary, size: 40)
          ],
        ),
      ),
    );
  }
}
