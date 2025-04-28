import 'package:coffee_shop_mobile_app/core/color.dart';
import 'package:coffee_shop_mobile_app/core/images_path.dart';
import 'package:coffee_shop_mobile_app/core/text_path.dart';
import 'package:coffee_shop_mobile_app/view/screen/auth/login_screen.dart';
import 'package:flutter/material.dart';

import '../widget/custom_Button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLogin = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 530,
            width: double.maxFinite,
            child: Image.asset(AppImages.splashImage, fit: BoxFit.fill),
          ),

          Container(
            margin: EdgeInsets.only(top: 510),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    AppText.splashScreenTitle1,
                    style: TextTheme.of(context).titleLarge,
                  ),
                  Text(
                    AppText.splashScreenTitle2,
                    style: TextTheme.of(context).titleLarge,
                  ),
                  SizedBox(height: 10),
                  CustomButton(
                    buttonText: 'Create an account',
                    textColor: isLogin ? Colors.white : AppColor.mainblack,
                    buttonColor: isLogin ? AppColor.mainblack : Colors.white,
                    onTap: (
                        ) {
                      setState(() {
                        isLogin = true;
                      });
                    },
                  ),
                  CustomButton(buttonText: 'Login',
                      textColor:  isLogin ? AppColor.mainblack : Colors.white,
                      buttonColor: isLogin ? Colors.white : AppColor.mainblack,
                      onTap: () {
                    setState(() {
                      isLogin = false;

                    });
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                  }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
