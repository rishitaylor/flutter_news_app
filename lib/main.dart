import 'package:flutter/material.dart';
import 'package:flutter_news/app/modules/home/views/home_view.dart';
import 'package:flutter_news/app/modules/splash/views/splash_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'app/modules/home/views/bottombar_view.dart';
import 'app/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      child: GetMaterialApp(
        enableLog: true,
        defaultTransition: Transition.fade,
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        title: "News App",
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // fontFamily: 'Rubik',
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // home: const HomeView(),
      ),
    );
  }
}
