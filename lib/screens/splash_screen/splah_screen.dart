import 'package:flutter/material.dart';
import 'package:mt_box/controllers/splash_controller.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Consumer<SplashController>(builder: (context, value, child) {
          return PageView(
            controller: value.pageController,
            children: const [],
          );
        }));
  }
}
