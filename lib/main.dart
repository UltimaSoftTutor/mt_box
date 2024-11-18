import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mt_box/constants/theme.dart';
import 'package:mt_box/controllers/controller.dart';
import 'package:mt_box/controllers/splash_controller.dart';
import 'package:mt_box/firebase_options.dart';

import 'package:mt_box/screens/register_screen.dart';
import 'package:mt_box/screens/splash_screen/splah_screen.dart';
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
        designSize: const Size(375, 812),
        splitScreenMode: true,
        child: MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => Controller(),
            ),
            ChangeNotifierProvider(create: (context) => SplashController())
          ],
          child: MaterialApp(
            theme: AppTheme().theme(),
            debugShowCheckedModeBanner: false,
            initialRoute: '/splash_screen',
            routes: {
              '/splash_screen': (context) => const SplashScreen(),
              '/register_screen': (context) => const RegisterScreen()
            },
          ),
        ));
  }
}
