import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mt_box/main.dart';

class VerificationButton extends StatelessWidget {
  const VerificationButton({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: const Color(0xff1565C0),
          ),
        ));
  }
}
