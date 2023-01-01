import 'package:flutter/material.dart';

class StoryCircleAvatar extends StatelessWidget {
  const StoryCircleAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: 2,
                color: Colors.red,
              ),
            ),
            child: CircleAvatar(
              radius: 28.0,
              child: ClipOval(
                child: Image.asset(
                  'assets/images/profile1.png',
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 5.0,
              bottom: 8.0,
            ),
            child: Text(
              'Your Story',
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
