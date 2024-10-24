import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mt_box/constants/extensions.dart';
import 'package:mt_box/main.dart';
import 'package:mt_box/utils/verification_button.dart';

class TopBannerWidget extends StatelessWidget {
  const TopBannerWidget(
      {super.key,
      required this.imagePath,
      required this.buttonText,
      required this.labelText});

  final String imagePath;

  final String buttonText;

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.heigth * 0.45,
      width: context.width,
      alignment: Alignment.topCenter,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 54.h),
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover)),
      child: SizedBox(
        height: context.heigth * 0.20,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  labelText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 35.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                VerificationButton(
                  text: buttonText,
                )
              ],
            ),
            Text(
              'Enter Your Mobile Number',
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
