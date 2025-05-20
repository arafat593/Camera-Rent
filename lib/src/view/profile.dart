import 'package:flutter/material.dart';

import '../../core/image_path.dart';
import '../../core/text_path.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back)),
          title: Text('Profile'),
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
          ],
        ),
        body: Stack(
            children: [
              Container(
                height: 350,
                width: double.infinity,
                child: Image.asset(AppImages.profileImage,),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 330),
                  height: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amber,
                  ),

                  child: Column(
                    spacing: 5,
                    children: [
                      SizedBox(height: 50,),
                      Text(AppText.profileName,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.email),
                          Text('John@123', style: TextStyle(fontSize: 16, color: Colors.blue, )),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.phone),
                          Text('01234567891'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.location_on),
                          Text('Canada, Uk'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ]
        )
    );
  }
}