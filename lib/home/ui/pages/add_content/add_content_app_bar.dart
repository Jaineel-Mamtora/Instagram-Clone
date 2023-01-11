import 'package:flutter/material.dart';

class AddContentAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AddContentAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.5,
      centerTitle: true,
      title: const Text(
        'Add Content',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
