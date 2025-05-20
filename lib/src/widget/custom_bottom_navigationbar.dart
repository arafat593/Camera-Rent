
import 'package:flutter/material.dart';

import '../view/booking.dart';
import '../view/cart.dart';
import '../view/home_screen.dart';
import '../view/profile.dart';
import '../view/search.dart';

class CustomBottomNavigationbar extends StatefulWidget {
  const CustomBottomNavigationbar({super.key});

  @override
  State<CustomBottomNavigationbar> createState() =>
      _CustomBottomNavigationbarState();
}

class _CustomBottomNavigationbarState extends State<CustomBottomNavigationbar> {
  int _currentIndex = 0;
  List pageLink = [
    HomeScreen(),
    Search(),
    Cart(),
    Booking(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageLink[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        iconSize: 20,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark),label: 'Booking'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: 'Profile'),
        ],
      ),
    );
  }
}