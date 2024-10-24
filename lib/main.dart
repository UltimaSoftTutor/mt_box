import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:mt_box/constants/theme.dart';
import 'package:mt_box/controllers/controller.dart';
import 'package:mt_box/firebase_options.dart';
import 'package:mt_box/screens/register_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(393, 852),
        splitScreenMode: true,
        child: ChangeNotifierProvider(
          create: (context) => Controller(),
          child: MaterialApp(
            title: 'MTBox',
            debugShowCheckedModeBanner: false,
            theme: AppTheme().theme(),
            home: const RegisterScreen(),
          ),
        ));
  }
}
