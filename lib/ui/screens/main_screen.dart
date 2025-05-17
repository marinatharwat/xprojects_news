import 'package:flutter/material.dart';
import 'package:xprojects_news/ui/screens/bookmark_screen/screens/bookmark_screen.dart';
import 'package:xprojects_news/ui/screens/home_screen/screens/home_screen.dart';
import 'package:xprojects_news/ui/screens/search_screen/screens/search_screen.dart';
import 'package:xprojects_news/ui/screens/setting_screen/setting_screen.dart';
import 'package:xprojects_news/ui/widgets/cusom_bottom_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const BookMarkScreen(),
     const SearchScreen(),
    const Center(child: Text('Notifications')),
    const SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            _screens[_currentIndex],
            Positioned(
              left: w * 0.07,
              right: w * 0.07,
              bottom: h * 0.03,
              child: CustomBottomNavBar(
                currentIndex: _currentIndex,
                onTap: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}