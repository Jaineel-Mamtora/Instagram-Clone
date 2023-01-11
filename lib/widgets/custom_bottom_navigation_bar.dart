import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
    this.selectedIndex = 0,
    required this.onItemTap,
  });

  final int selectedIndex;
  final Function(int)? onItemTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color(0xFFFAFAFA),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: selectedIndex,
      onTap: onItemTap,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          label: 'Home',
          activeIcon: SvgPicture.asset(
            'assets/icons/home_selected.svg',
          ),
          icon: SvgPicture.asset(
            'assets/icons/home.svg',
          ),
        ),
        BottomNavigationBarItem(
          label: 'Search',
          activeIcon: SvgPicture.asset(
            'assets/icons/search_selected.svg',
          ),
          icon: SvgPicture.asset(
            'assets/icons/search.svg',
          ),
        ),
        BottomNavigationBarItem(
          label: 'Add',
          activeIcon: SvgPicture.asset(
            'assets/icons/add_selected.svg',
          ),
          icon: Padding(
            padding: const EdgeInsets.only(
              top: 1.0,
              left: 1.0,
            ),
            child: SvgPicture.asset(
              'assets/icons/add.svg',
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: 'Like',
          activeIcon: SvgPicture.asset(
            'assets/icons/like_selected.svg',
          ),
          icon: SvgPicture.asset(
            'assets/icons/like.svg',
          ),
        ),
        BottomNavigationBarItem(
          label: 'Profile',
          activeIcon: Container(
            padding: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: 1,
                color: const Color(0xFF262626),
              ),
            ),
            child: CircleAvatar(
              radius: 11.5,
              child: ClipOval(
                child: Image.asset(
                  'assets/images/profile1.png',
                ),
              ),
            ),
          ),
          icon: Padding(
            padding: const EdgeInsets.all(3.0),
            child: CircleAvatar(
              radius: 11.5,
              child: ClipOval(
                child: Image.asset(
                  'assets/images/profile1.png',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
