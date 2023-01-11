import 'package:flutter/material.dart';

import '../../../../widgets/post.dart';
import '../../../../widgets/story_circle_avatar.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
            ),
            child: SizedBox(
              height: 98.0,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (_, index) => const StoryCircleAvatar(),
                separatorBuilder: (_, index) => const SizedBox(
                  width: 20.0,
                ),
              ),
            ),
          ),
          const Divider(
            height: 1.0,
            thickness: 0.5,
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (_, index) => Post(
              size: size,
            ),
            separatorBuilder: (_, index) => const SizedBox(
              height: 10.0,
            ),
          ),
        ],
      ),
    );
  }
}
