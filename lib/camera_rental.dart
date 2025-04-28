import 'package:coffee_shop_mobile_app/core/color.dart';
import 'package:coffee_shop_mobile_app/view/screen/auth/create_new_account.dart';
import 'package:coffee_shop_mobile_app/view/screen/auth/home_screen.dart';
import 'package:coffee_shop_mobile_app/view/screen/auth/login_screen.dart';
import 'package:coffee_shop_mobile_app/view/screen/auth/profile_screen.dart';
import 'package:coffee_shop_mobile_app/view/screen/auth/search.dart';
import 'package:coffee_shop_mobile_app/view/screen/splash_screen.dart';
import 'package:coffee_shop_mobile_app/view/screen/auth/welcome_massage.dart';
import 'package:coffee_shop_mobile_app/view/widget/custom_bottom_navigationbar.dart';
import 'package:flutter/material.dart';

class CameraRental extends StatefulWidget {
  const CameraRental({super.key});

  @override
  State<CameraRental> createState() => _CameraRentalState();
}

class _CameraRentalState extends State<CameraRental> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
          )

        )

      ),
      home: HomeScreen(),
    );
  }
}