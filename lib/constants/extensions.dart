import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension PaddingExtension on BuildContext {
  EdgeInsets get padding =>
      EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h);

  EdgeInsets get horizontalPadding => EdgeInsets.symmetric(
        horizontal: 20.w,
      );

  EdgeInsets get verticalPadding => EdgeInsets.symmetric(vertical: 20.h);

  double get width => MediaQuery.of(this).size.width;
  double get heigth => MediaQuery.of(this).size.height;
}

extension TextStyleExtension on TextStyle {
  // introduction screen styles

  TextStyle get introBold => TextStyle(
      fontFamily: 'Roboto-Bold',
      fontSize: 25.sp,
      color: const Color(0xff1565C0));
}
