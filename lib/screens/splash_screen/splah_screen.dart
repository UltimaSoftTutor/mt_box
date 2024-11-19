import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mt_box/constants/colors.dart';
import 'package:mt_box/constants/extensions.dart';
import 'package:mt_box/controllers/splash_controller.dart';
import 'package:mt_box/utils/dot_indicators.dart';
import 'package:mt_box/utils/mt_elevated_button.dart';
import 'package:mt_box/utils/mt_text_button.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      maintainBottomViewPadding: true,
      child: Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          body: Column(
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
                      SizedBox(
                        height: 15.h,
                      ),
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
                            height: 15.h,
                          ),
                          Text('Connect with multiple members in group chats.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Roboto-Bold',
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.darkBlueColor,
                                  overflow: TextOverflow.visible))
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
                        clipper: CurvedContainerOne(),
                        child: Container(
                          width: context.screenWidth,
                          height: context.screenHeigth * 0.5,
                          color: AppColors.introBackgroundLightBlueColor,
                        ),
                      ),
                    ),
                    ClipPath(
                      clipper: CurvedContainerTwo(),
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                MtTextButton(
                                  onPressed: () {},
                                  text: 'Skip',
                                  size: 16.sp,
                                ),
                                const DotIndicators(index: 2),
                                MTElevatedButton(
                                  text: 'Next',
                                  onPressed: () {},
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
          )),
    );
  }
}

class CurvedContainerOne extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, 0);

    path.quadraticBezierTo(size.width / 2, size.height - 300, size.width, 0);

    path.quadraticBezierTo(size.width, size.height, size.width, size.height);

    // Right curve (mirrored to create parallel arc)
    //path.quadraticBezierTo(size.width / 2, size.height - 40, size.width, 0);

    //path.lineTo(size.width, size.height);

    path.quadraticBezierTo(size.width / 2, size.height, 0, size.height);

    path.quadraticBezierTo(0, size.height, 0, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class CurvedContainerTwo extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, 0);

    path.quadraticBezierTo(size.width / 2, size.height - 250, size.width, 0);

    path.quadraticBezierTo(size.width, size.height, size.width, size.height);

    // Right curve (mirrored to create parallel arc)
    //path.quadraticBezierTo(size.width / 2, size.height - 40, size.width, 0);

    //path.lineTo(size.width, size.height);

    path.quadraticBezierTo(size.width / 2, size.height, 0, size.height);

    path.quadraticBezierTo(0, size.height, 0, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
