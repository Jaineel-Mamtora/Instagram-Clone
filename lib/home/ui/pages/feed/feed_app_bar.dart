import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FeedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FeedAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.5,
      centerTitle: true,
      title: SvgPicture.asset(
        'assets/instagram_logo.svg',
        width: 105.0,
      ),
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          'assets/icons/camera.svg',
        ),
        splashRadius: 22,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/igtv.svg',
          ),
          splashRadius: 22,
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/messenger.svg',
          ),
          splashRadius: 22,
        ),
      ],
    );
  }
}
