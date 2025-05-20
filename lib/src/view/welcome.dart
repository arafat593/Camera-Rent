import 'package:flutter/material.dart';

import '../../core/color.dart';
import '../widget/custom_Button.dart';
import 'home_screen.dart';

class WelcomeMassage extends StatelessWidget {
  const WelcomeMassage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.check_circle_outline_sharp,
                size: 120,
                color: AppColor.mainblack,
                applyTextScaling: true,
                weight: 0.5,
              ),
              SizedBox(height: 50),
              Text(
                'Welcome Leaseycam',
                style: TextTheme.of(context).titleLarge,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Your account is ready to use.you will be redirected to the Home page in a few seconds...',
                  style: TextStyle(color: Colors.grey, fontSize: 19,),
                ),
              ),
              SizedBox(height:50),
              CustomButton(buttonText: "Let's Explore",buttonColor: Colors.black,textColor: Colors.white, onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context) => HomeScreen(),),);
              })
            ],
          ),
        ),
      ),
    );
  }
}