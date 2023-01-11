import 'package:flutter/material.dart';

class LikeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LikeAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.5,
      centerTitle: true,
      title: const Text(
        'Likes',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
