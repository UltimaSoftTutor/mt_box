import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension Padding on BuildContext {
  EdgeInsets get padding =>
      EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h);

  EdgeInsets get horizontalPadding => EdgeInsets.symmetric(
        horizontal: 20.w,
      );

  EdgeInsets get verticalPadding => EdgeInsets.symmetric(vertical: 20.h);

  double get width => MediaQuery.of(this).size.width;
  double get heigth => MediaQuery.of(this).size.height;
}

extension Styles on TextStyle {
  TextStyle get title => const TextStyle();
}

extension Sizer on Widget {
  Widget sizeHort(double size) {
    return SizedBox(
      width: size.w,
    );
  }

  Widget sizeVert(double size) {
    return SizedBox(
      width: size.h,
    );
  }
}
