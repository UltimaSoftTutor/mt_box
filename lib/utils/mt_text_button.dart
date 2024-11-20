import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MtTextButton extends StatelessWidget {
  const MtTextButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.color,
    this.size,
    this.fontWeight,
  });

  final Function onPressed;
  final String text;
  final double? size;
  final FontWeight? fontWeight;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed(),
        child: Text(
          text,
          style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: size ?? 16.sp,
              fontWeight: fontWeight ?? FontWeight.w600,
              color: color ?? const Color(0xFF3AB2E8)),
        ));
  }
}
