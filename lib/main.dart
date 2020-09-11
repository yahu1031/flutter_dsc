import 'package:flutter/material.dart';
import 'package:flutter_dsc/Components/Responsive/sizeConfig.dart';
import 'package:flutter_dsc/Components/constants.dart';
import 'package:flutter_dsc/screens/about_screen.dart';
import 'package:flutter_dsc/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(builder: (context, orientation) {
          SizeConfig().init(constraints, orientation);
            print(SizeConfig.heightMultiplier);
          return MaterialApp(
            title: 'Demo App DSC',
            theme: ThemeData(
              // This is the theme of your application.
              primarySwatch: CustomColors.themeColor,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            routes: {
              HomeScreen.screenId: (context) => HomeScreen(),
              AboutScreen.screenId: (context) => AboutScreen(),
            },
            initialRoute: HomeScreen.screenId,
          );
        },);
      },
    );
  }
}
