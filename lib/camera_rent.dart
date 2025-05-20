
import 'package:camera_rent/src/view/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'core/color.dart';

class CameraRent extends StatefulWidget {
  const CameraRent({super.key});

  @override
  State<CameraRent> createState() => _CameraRentState();
}

class _CameraRentState extends State<CameraRent> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CoffeeShop',
      theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
              )
          ),
          textTheme: TextTheme(
              titleLarge: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 30,color: AppColor.mainblack
              ),
              titleMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: AppColor.mainblack)

          )

      ),
      home: SplashScreen(),
    );
  }
}