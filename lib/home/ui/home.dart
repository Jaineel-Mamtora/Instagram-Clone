import 'package:flutter/material.dart';
import 'package:instagram_clone/home/ui/pages/add_content/add_content_app_bar.dart';
import 'package:instagram_clone/home/ui/pages/feed/feed_app_bar.dart';
import 'package:instagram_clone/home/ui/pages/like/like_app_bar.dart';
import 'package:instagram_clone/home/ui/pages/profile/profile_app_bar.dart';
import 'package:instagram_clone/home/ui/pages/search/search_app_bar.dart';

import 'pages/add_content/add_content_page.dart';
import 'pages/feed/feed_page.dart';
import 'pages/like/like_page.dart';
import 'pages/profile/profile_page.dart';
import 'pages/search/search_page.dart';

import '../../widgets/custom_bottom_navigation_bar.dart';

class Home extends StatefulWidget {
  static const routeName = '/home';
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  final List<PreferredSizeWidget> _appBars = [
    const FeedAppBar(),
    SearchAppBar(),
    const AddContentAppBar(),
    const LikeAppBar(),
    const ProfileAppBar(),
  ];

  final List<Widget> _pages = [
    const FeedPage(),
    SearchPage(),
    const AddContentPage(),
    const LikePage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBars.elementAt(_selectedIndex),
      body: SafeArea(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemTap: _onItemTapped,
      ),
    );
  }
}
