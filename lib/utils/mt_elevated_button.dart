import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mt_box/constants/colors.dart';
import 'package:mt_box/constants/extensions.dart';

class MTElevatedButton extends StatelessWidget {
  const MTElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.style,
    required this.isDisable,
    this.backgroundColor,
    this.height,
    this.width,
  });

  final String text;
  final TextStyle? style;
  final Function onPressed;
  final bool isDisable;
  final Color? backgroundColor;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isDisable ? null : onPressed(),
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide.none,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.r)))),
      child: Container(
        height: height ?? 50.h,
        width: width ?? context.screenWidth,
        padding: EdgeInsets.zero,
        margin: EdgeInsets.zero,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isDisable ? null : backgroundColor,
          gradient: !isDisable && backgroundColor == null
              ? const LinearGradient(colors: [
                  Color(0xFF40C4FF),
                  Color(0xFF03A9F4),
                ])
              : null,
          borderRadius: BorderRadius.all(Radius.circular(50.r)),
        ),
        child: Text(
          text,
          style: style ??
              TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
        ),
      ),
    );
  }
}
