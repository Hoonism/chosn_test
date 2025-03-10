import 'package:chosn_test/pages/home_page.dart';
import 'package:chosn_test/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController _pageController = PageController(initialPage: 1);
  int _selectedIndex = 0;
  final List _pages = [HomePage(), ProfilePage(), SettingsPage()];
  final List _pagetitles = ["Chats", "Home", "Settings"];

  void navigateBottomBar(int index) {
    _pageController.animateToPage(index,
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  void changePage(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: changePage,
        children: [HomePage(), ProfilePage(), SettingsPage()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        currentIndex: _selectedIndex,
        onTap: navigateBottomBar,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.check_box_rounded, size: 30),
              label: "",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.timer, size: 30),
              label: "",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_rounded, size: 30),
              label: "",
              backgroundColor: Colors.white),
        ],
      ),
    );
  }
}
