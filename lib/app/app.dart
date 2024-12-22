import 'package:flutter/material.dart';

import '../data/route/Routes.dart';
import '../res/AppColor.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primaryColor: AppColor().colorPrimary,
              fontFamily: 'Poppins',
            ),
            navigatorKey: navigatorKey,
            routes: Routes.getRoutes(),
            builder: (BuildContext context, Widget? child) {
              return MediaQuery(
                  data:
                  MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                  child: child!);
            });
      },
    );
  }
}
