import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mt_box/constants/extensions.dart';
import 'package:mt_box/controllers/controller.dart';
import 'package:mt_box/utils/mobile_field.dart';
import 'package:mt_box/utils/top_banner.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  GlobalKey key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Consumer<Controller>(builder: (context, value, child) {
      return SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: SizedBox(
            width: context.width,
            height: context.heigth,
            child: Form(
              key: key,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const TopBannerWidget(
                    imagePath: "assets/top_banner.png",
                    labelText: 'Register',
                    buttonText: 'Login',
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Container(
                    padding: context.horizontalPadding,
                    child: Column(
                      children: [
                        Text(
                          'You will get a code via sms.',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff1B526B)),
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        MobileInputField(
                          controller: value.mobileInputController,
                          onChanged: (val) {
                            value.updateInput(val);
                          },
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () async {
                                value.verifyPhoneNumber(value.mobileValue);
                              },
                              borderRadius: BorderRadius.circular(30),
                              child: Ink(
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: value.input.length < 10
                                        ? Colors.blue.shade100
                                        : Theme.of(context)
                                            .colorScheme
                                            .primary),
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 30.sp,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
