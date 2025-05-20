import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../core/color.dart';
import '../../core/image_path.dart';
import '../../core/text_path.dart';
import '../widget/carousel_top_container.dart';
import '../widget/custom_dropdown_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CarouselSliderController _carouselSliderController =
  CarouselSliderController();
  final List<String> countryName = [
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
  ];

  final slideLists = [
    CarouselTopContainer(image: AppImages.l),
    CarouselTopContainer(image: AppImages.k),
    CarouselTopContainer(image: AppImages.j),
    CarouselTopContainer(image: AppImages.i),
    CarouselTopContainer(image: AppImages.h),
    CarouselTopContainer(image: AppImages.g),
  ];

  int currentIndex = 0;

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
                Text(
                  'Hello ',
                  style: TextStyle(fontSize: 25, color: Colors.grey),
                ),
                Icon(Icons.waving_hand, color: Colors.amber),

                Text(
                  AppText.profileName,
                  style: TextStyle(fontSize: 25, color: Colors.grey),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.location_on_outlined, size: 30),
                CustomDropdownButton(countyList: countryName),
              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Container(
              height: 50,
              width: 48,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 2),
                borderRadius: BorderRadius.circular(15),
              ),

              child: Icon(
                Icons.notifications_outlined,
                color: Colors.grey,
                size: 35,
              ),
            ),
          ),
        ],
      ),


      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              CarouselSlider(
                items: slideLists,
                carouselController: _carouselSliderController,
                options: CarouselOptions(
                  viewportFraction: 1,
                  autoPlay: true,
                  height: 120,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                slideLists.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap:
                        () => _carouselSliderController.animateToPage(
                      entry.key,
                    ),
                    child: Container(
                      width: currentIndex == entry.key ? 48 : 24,
                      height: 4,
                      margin: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color:
                        currentIndex == entry.key
                            ? AppColor.mainyellowcolor
                            : Colors.grey,
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  );
                }).toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Brands',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}