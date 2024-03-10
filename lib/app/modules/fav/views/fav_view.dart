import 'package:flutter/material.dart';

class FavView extends StatelessWidget {
  const FavView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: Column(
        children: [Text('FavView')],
      ),
    ));
  }
}
