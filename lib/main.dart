import 'package:desing_resposive/view/home_view.dart';
import 'package:desing_resposive/view/test.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:device_preview/device_preview.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return 
    Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          title: 'Sizer',
          theme: ThemeData.light(),
          home: HomeView(),
        );
      },
    );
    // ScreenUtilInit(
    //   designSize: const Size(360, 690),
    //   minTextAdapt: true,
    //   splitScreenMode: true,
    //   builder: (context, child) {
    //     return MaterialApp(
    //       debugShowCheckedModeBanner: false,
    //       useInheritedMediaQuery: true,
    //       locale: DevicePreview.locale(context),
    //       builder: DevicePreview.appBuilder,

    //       title: 'First Method',
    //       // You can use the library anywhere in the app even in theme
    //       theme: ThemeData(
    //         primarySwatch: Colors.blue,
    //         textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1),
    //       ),
    //       home: child,
    //     );
    //   },
    //   child: const TestView(),
    // );
  }
}
