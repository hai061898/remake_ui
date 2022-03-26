import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:re_ui/school/school1_it_error/ui/screen/class_page.dart';
import 'package:re_ui/school/school1_it_error/ui/screen/home_school_page.dart';
import 'package:re_ui/school/school1_it_error/ui/themes/text.dart';


class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedTab = 0;
  Widget? _currentPage;
  List<Widget>? _pages;
  HomeScreen? _homeScreen;
  ClassesScreen? _classesScreen;

  @override
  void initState() {
    super.initState();
    _homeScreen = const HomeScreen();
    _classesScreen = const ClassesScreen();
    _pages = [_homeScreen!, _classesScreen!];
    _currentPage = _homeScreen;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Stack(
        children: [
          _currentPage!,
          _bottomNavigator(),
        ],
      ),
    );
  }

  _bottomNavigator() {
    return Positioned(
      bottom: 0.0,
      left: 0.0,
      right: 0.0,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Theme.of(context).backgroundColor,
          currentIndex: _selectedTab,
          onTap: (int index) {
            setState(() {
              _selectedTab = index;
              if (index == 0 || index == 1) {
                _currentPage = _pages![index];
              }
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/school/house.svg",
                width: 35.0,
                color: _selectedTab == 0 ? Theme.of(context).colorScheme.secondary : kTextColor,
              ),
              activeIcon: const SizedBox.shrink(),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/school/read_book.svg",
                width: 35.0,
                color: _selectedTab == 1 ? Theme.of(context).colorScheme.secondary : kTextColor,
              ),
              activeIcon: const SizedBox.shrink(),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/school/homework.svg",
                width: 35.0,
                color: _selectedTab == 2 ? Theme.of(context).colorScheme.secondary : kTextColor,
              ),
              activeIcon:  const SizedBox.shrink(),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/school/comment.svg",
                width: 35.0,
                color: _selectedTab == 3 ? Theme.of(context).colorScheme.secondary : kTextColor,
              ),
              activeIcon: const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}