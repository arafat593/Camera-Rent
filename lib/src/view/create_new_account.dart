
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/color.dart';
import '../widget/custom_Button.dart';
import '../widget/custom_textfield.dart';
import 'login.dart';

class CreateNewAccount extends StatefulWidget {
  const CreateNewAccount({super.key,});

  @override
  State<CreateNewAccount> createState() => _CreateNewAccountState();
}

class _CreateNewAccountState extends State<CreateNewAccount> {

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController _emailContorller = TextEditingController();
  TextEditingController _passwordContorller = TextEditingController();
  TextEditingController _codeContorller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  AppBar(
          leading: Icon(Icons.chevron_left),
        ),
        body: Form(
          key: _formkey,
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    Text("Create an account",style: TextTheme.of(context).titleLarge,),
                    CustomTextfield(
                        controller: _emailContorller,
                        validator: (String? value){
                          if(value == null || value.isEmpty){
                            return 'Enter your Email';
                          } else if (!RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$").hasMatch(value)) {
                            return 'Enter a valid email';
                          } return null;
                        },
                        labelText: 'Email', hintText: 'Ex.abc@123'),
                    CustomTextfield(
                        controller: _passwordContorller,
                        validator: (String? value){
                          if(value == null || value.isEmpty ){
                            return 'Enter your Email';
                          } else if(value.length <= 7 ){
                            return 'password must be 8 digit';
                          } return null;
                        },
                        labelText: 'Password', hintText: 'Your Password'),
                    CustomTextfield(
                        controller: _passwordContorller,
                        validator: (String? value){
                          if(value == null || value.isEmpty ){
                            return 'Enter your Email';
                          } else if(value.length <= 7 ){
                            return 'password must be 8 digit';
                          } return null;
                        },
                        labelText: 'Confirm Password', hintText: 'Password again'),
                    CustomTextfield(
                        controller: _codeContorller,
                        validator: (String? value){
                          if(value == null || value.isEmpty){
                            return 'Enter your Code';
                          } return null;
                        },
                        labelText: 'Referral Code', hintText: '6 Digit'),
                    SizedBox(height: 50),
                    TextButton(
                      onPressed: (){
                        Get.to(LoginScreen());
                      }, child: Text('Have an account'),),
                    CustomButton(buttonText: 'Sing UP',
                        buttonColor: AppColor.mainblack,
                        textColor: Colors.white,
                        onTap: (){
                          if(_formkey.currentState!.validate()){
                            print('Account successfully created');
                          }
                        }),
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}