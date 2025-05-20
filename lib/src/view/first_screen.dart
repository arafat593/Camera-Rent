import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/color.dart';
import '../../core/image_path.dart';
import '../../core/text_path.dart';
import '../widget/custom_Button.dart';
import 'create_new_account.dart';
import 'login.dart';


class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
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
                    onTap: () {
                      setState(() {
                        isLogin = true;
                        Get.to(CreateNewAccount());
                      });
                    },
                  ),
                  CustomButton(
                    buttonText: 'Login',
                    textColor: isLogin ? AppColor.mainblack : Colors.white,
                    buttonColor: isLogin ? Colors.white : AppColor.mainblack,
                    onTap: () {
                      setState(() {
                        isLogin = false;
                      });
                      Get.to(LoginScreen());
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}