import 'package:flutter/material.dart';

class WorldView extends StatelessWidget {
  const WorldView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: Column(
        children: [Text('worldView')],
      ),
    ));
  }
}
