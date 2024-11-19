import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mt_box/constants/colors.dart';

extension PaddingExtension on BuildContext {
  EdgeInsets get padding =>
      EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h);

  EdgeInsets get horizontalPadding => EdgeInsets.symmetric(
        horizontal: 20.w,
      );

  EdgeInsets get verticalPadding => EdgeInsets.symmetric(vertical: 20.h);

  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeigth => MediaQuery.of(this).size.height;
}

extension TextStyleExtension on TextStyle {
  // introduction screen styles

  TextStyle get introBold => TextStyle(
      fontFamily: 'Roboto',
      fontSize: 25.sp,
      fontWeight: FontWeight.bold,
      color: AppColors.darkBlueColor,
      overflow: TextOverflow.ellipsis);

  TextStyle get introLight => TextStyle(
      fontFamily: 'Roboto',
      fontSize: 18.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.darkBlueColor,
      overflow: TextOverflow.visible);
}
