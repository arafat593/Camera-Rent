import 'package:coffee_shop_mobile_app/core/text_path.dart';
import 'package:coffee_shop_mobile_app/view/widget/custom_dropdown_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<String> country1 = [
    'bangladesh',
    'United States',
    'Canada',
    'United Kingdom',
    'Australia',
    'Germany',
    'France',
    'Italy',
    'Spain',
    'India',
    'China',
    'Japan',
    'Brazil',
    'Mexico',
    'South Africa',
    'Somalia',
    'Kenya',
    'Egypt',
    'Turkey',
    'Saudi Arabia',
    'United Arab Emirates'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actionsPadding: EdgeInsets.only(right: 15),
          automaticallyImplyLeading: false,
          toolbarHeight: 90,
          title: Column(
            children: [
              Row(
                children: [
                  Text('Hello ', style: TextStyle(fontSize: 25,color: Colors.grey),),
                  Icon(Icons.waving_hand, color: Colors.amber,),

                  Text(AppText.profileName, style: TextStyle(fontSize: 25,color: Colors.grey)),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.location_on_outlined,size: 30,),
                  CustomDropdownButton(countyList: country1,)
                ],
              )
            ],
          ),
          actions: [Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Container(
                height: 100,
                width: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.yellowAccent,
                ),
                child: Icon(

                  Icons.notifications_outlined, color: Colors.grey,size: 40,)),
          )
          ],

        ),
        body: Column(
          children: [
          ],
        )
    );
  }
  }
