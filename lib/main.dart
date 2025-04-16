import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_programming/view/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1920, 1080),
      builder:
          (_, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            home: child,

          ),
        child: MainPage(),
    );
  }
}
