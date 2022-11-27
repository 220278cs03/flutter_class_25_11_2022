import 'package:dars_25_11_2022/home_page.dart';
import 'package:dars_25_11_2022/profile_page.dart';
import 'package:dars_25_11_2022/serach_part.dart';
import 'package:dars_25_11_2022/settings_page.dart';
import 'package:flutter/material.dart';

class BottomNB extends StatefulWidget {
  const BottomNB({Key? key}) : super(key: key);

  @override
  State<BottomNB> createState() => _BottomNBState();
}

class _BottomNBState extends State<BottomNB> {
  final PageController _pageController = PageController();
  int barIndex = 0;
  List<Widget> list = [
    HomePage(),
    SearchPage(),
    ProfilePage(),
    SettingsPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(  //list[barIndex]
        controller: _pageController,
        onPageChanged: (index){
          barIndex = index;
          setState(() {});
        },
        children: list,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: barIndex,
        onTap: (index){
          barIndex = index;
          _pageController.animateToPage(barIndex, duration: const Duration(milliseconds: 700), curve: Curves.easeIn); //animateToPage(barIndex, duration: const Duration(milliseconds: 1000), curve: Curves.easeIn);
          setState(() {
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined), label: 'Add'),
        ],
      ),
    );
  }
}
