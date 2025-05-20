import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/color.dart';
import '../widget/custom_Button.dart';
import '../widget/custom_bottom_navigationbar.dart';
import '../widget/custom_textfield.dart';
import 'create_new_account.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;

  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _PasswordController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(height: 60),
                    Text(
                      'Welcome Back',
                      style: TextTheme.of(context).titleLarge,
                    ),
                    Icon(Icons.waving_hand, color: Colors.amber),
                  ],
                ),
                SizedBox(height: 30),

                CustomTextfield(
                  controller: _userNameController,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Email is not empty';
                    }
                    return null;
                  },
                  labelText: 'User Name',
                  hintText: 'Ex.abc@123',
                ),
                CustomTextfield(
                  controller: _PasswordController,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Password is not empty";
                    }
                    if (value.length <= 7) {
                      return 'Password must be 8 digit';
                    }
                    return null;
                  },
                  labelText: 'Password',
                  hintText: 'Your Password',
                ),

                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (bool? value) {
                            isChecked = value ?? false;
                          },
                        ),
                        Text(
                          'Remember me',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Forget Password?'),
                    ),
                  ],
                ),
                SizedBox(height: 20),

                CustomButton(
                  buttonText: 'Sign in',
                  onTap: () {
                    if (_formkey.currentState!.validate()) {
                      print('Login Succesfully');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CustomBottomNavigationbar(),
                        ),
                      );
                    }
                  },
                  buttonColor: AppColor.mainblack,
                  textColor: Colors.white,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "You Don't have an account?",
                      style: TextStyle(fontSize: 16, color: AppColor.mainblack),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(CreateNewAccount());
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.amber, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}