import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_news/app/data/secure_storage.dart';
import 'package:flutter_news/app/models/homefeed_model.dart';
import 'package:flutter_news/app/networking/networking.dart';
import 'package:get/get.dart';

class SubCategoryController extends GetxController {
  HomefeedModel homefeedModel = HomefeedModel();
  RxBool isLoading = false.obs;
  RxList<bool> isReadMoreList = List.filled(0, false).obs;
  int readMore = 0;
  final dio = Dio();
  getCategories() async {
    try {
      isLoading.value = true;
      var response = await Networking().get("everything?q=category");

      if (homefeedModel.status == null) {
        homefeedModel = HomefeedModel.fromJson(response);
        LocalStorage().setString(LocalStorage.homeFeed, json.encode(response));
        updateReadMoreList(homefeedModel.articles!.length);

        log(homefeedModel.status.toString());
        log(json.encode(response));
      } else {
        String storedData =
            LocalStorage().getString(LocalStorage.homeFeed).toString();
        var jsonData = json.decode(storedData);
        homefeedModel = HomefeedModel.fromJson(jsonData);

        // Ensure isReadMoreList exists if loading from storage
        updateReadMoreList(homefeedModel.articles?.length ?? 0);
      }
    } finally {
      isLoading.value = false;
    }
    return HomefeedModel;
  }

  void updateReadMoreList(int length) {
    if (isReadMoreList.length != length) {
      isReadMoreList.value = List.filled(length, false);
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    getCategories();
    super.onInit();
  }
}
