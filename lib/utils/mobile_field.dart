import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileInputField extends StatelessWidget {
  const MobileInputField({super.key, required this.controller, this.onChanged});

  final TextEditingController controller;

  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: 10,
      onChanged: onChanged,
      style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 24.sp,
          fontWeight: FontWeight.w400,
          color: Colors.black),
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          border: const UnderlineInputBorder(),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 2)),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.blue)),
          prefixIcon: const Icon(
            Icons.mobile_friendly_outlined,
            size: 28,
          ),
          counterText: '',
          prefixText: '+ 91 ',
          prefixStyle: TextStyle(color: Colors.black, fontSize: 24.sp),
          // hintText: '9944801158',
          //hintStyle: TextStyle(color: Colors.grey.shade400),
          contentPadding: EdgeInsets.symmetric(vertical: 10.h)),
    );
  }
}
