import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mt_box/constants/colors.dart';
import 'package:mt_box/constants/extensions.dart';
import 'package:mt_box/controllers/splash_controller.dart';
import 'package:mt_box/utils/curved_rect_dark.dart';
import 'package:mt_box/utils/curved_rect_light.dart';
import 'package:mt_box/utils/dot_indicators.dart';
import 'package:mt_box/utils/mt_elevated_button.dart';
import 'package:mt_box/utils/mt_text_button.dart';

class LayoutThree extends StatelessWidget {
  const LayoutThree({super.key, required this.splashController});

  final SplashController splashController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Container(
            color: AppColors.introBackgroundWhiteColor,
            padding: EdgeInsets.only(
                top: context.screenHeigth * (0.1 + 0.03),
                bottom: 10.h,
                right: 32.w,
                left: 32.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/group_chatting.png'),
                Flex(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  direction: Axis.vertical,
                  children: [
                    Text(
                      'Group Chatting',
                      style: const TextStyle().introBold,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text('Connect with multiple members in group chats.',
                        textAlign: TextAlign.center,
                        style: const TextStyle().introLight)
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: context.screenWidth,
          height: context.screenHeigth * 0.5,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned.fill(
                child: ClipPath(
                  clipper: CurvedRectLight(),
                  child: Container(
                    width: context.screenWidth,
                    height: context.screenHeigth * 0.5,
                    color: AppColors.introBackgroundLightBlueColor,
                  ),
                ),
              ),
              ClipPath(
                clipper: CurvedRectDark(),
                child: Container(
                  width: context.screenWidth,
                  height: context.screenHeigth * 0.42,
                  padding: EdgeInsets.only(
                      top: context.screenHeigth * 0.10,
                      left: 24.w,
                      right: 24.w),
                  alignment: Alignment.center,
                  color: AppColors.introBackgroundBlueColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MTElevatedButton(
                          text: 'Get Started',
                          onPressed: () {},
                          //backgroundColor: Colors.red,
                          isDisable: false),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          MtTextButton(
                            onPressed: () {},
                            text: 'Skip',
                            size: 16.sp,
                          ),
                          const DotIndicators(index: 3),
                          MTElevatedButton(
                            text: 'Next',
                            onPressed: () {
                              return () {
                                splashController.updateIndexByClicking(3);
                              };
                              //value.updateIndex(1);
                            },
                            isDisable: false,
                            backgroundColor: const Color(0xFFA7E4FF),
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.darkBlueColor),
                            width: 65,
                            height: 60,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
