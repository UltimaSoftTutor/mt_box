import 'package:flutter/material.dart';
import 'package:mt_box/controllers/splash_controller.dart';
import 'package:mt_box/screens/splash_screen/layout_four.dart';
import 'package:mt_box/screens/splash_screen/layout_one.dart';
import 'package:mt_box/screens/splash_screen/layout_three.dart';
import 'package:mt_box/screens/splash_screen/layout_two.dart';
import 'package:provider/provider.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<SplashController>(builder: (context, value, child) {
      return SafeArea(
          maintainBottomViewPadding: true,
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              body: PageView(
                controller: value.pageController,
                onPageChanged: (i) {
                  value.updateIndexByScrolling(i);
                },
                children: [
                  LayoutOne(
                    splashController: value,
                  ),
                  LayoutTwo(
                    splashController: value,
                  ),
                  LayoutThree(
                    splashController: value,
                  ),
                  LayoutFour(
                    splashController: value,
                  )
                ],
              )));
    });
  }
}
