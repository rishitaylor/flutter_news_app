import 'package:flutter/material.dart';
import 'package:flutter_news/app/common_widgets/home_builder.dart';

class SubCategoryView extends StatelessWidget {
  const SubCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HomeBuilder(
              name: 'name',
              title: 'title',
              img: 'img',
              maxLines: 1,
              readMore: '1')
        ],
      ),
    );
  }
}
