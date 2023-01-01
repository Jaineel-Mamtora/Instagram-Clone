import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cached_network_image/cached_network_image.dart';

// ignore: must_be_immutable
class Post extends StatefulWidget {
  Post({
    Key? key,
    required this.size,
    this.isLiked = false,
  }) : super(key: key);

  final Size size;
  bool isLiked;

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  final likeIcon = 'assets/icons/like.svg';
  final likeIconFilled = 'assets/icons/like_filled.svg';

  late String currLikeIcon;

  @override
  void initState() {
    super.initState();
    currLikeIcon = widget.isLiked ? likeIconFilled : likeIcon;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                radius: 16.0,
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/profile2.png',
                  ),
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'joshua_l',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 4.0,
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/official.svg',
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 1.0),
                  child: Text(
                    'Tokyo, Japan',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 11.0,
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert_rounded,
                color: Color(0xFF262626),
                size: 20.0,
              ),
              splashRadius: 20,
            ),
          ],
        ),
        GestureDetector(
          onDoubleTap: () {
            if (!widget.isLiked) {
              setState(() {
                widget.isLiked = true;
                currLikeIcon = likeIconFilled;
              });
            }
          },
          child: SizedBox(
            height: widget.size.width,
            width: double.infinity,
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl:
                  'https://images.unsplash.com/photo-1532275184950-4401e12adcaf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1040&q=80',
              progressIndicatorBuilder: (_, __, downloadProgress) => Center(
                child: CircularProgressIndicator(
                  value: downloadProgress.progress,
                ),
              ),
              errorWidget: (_, __, ___) => const Icon(
                Icons.error,
              ),
            ),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 13.5,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 13.5,
                      right: 20.0,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          widget.isLiked = !widget.isLiked;
                          currLikeIcon =
                              widget.isLiked ? likeIconFilled : likeIcon;
                        });
                      },
                      child: SvgPicture.asset(
                        currLikeIcon,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 20.0,
                    ),
                    child: GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset(
                        'assets/icons/comment.svg',
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(
                      'assets/icons/messenger.svg',
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15.0,
                      right: 17.0,
                    ),
                    child: GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset(
                        'assets/icons/save.svg',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 1.5,
                left: 15.0,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 8.5,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/like_profile1.png',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6.5,
                    ),
                    child: RichText(
                      text: const TextSpan(
                        text: 'Liked by ',
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Color(0xFF262626),
                          fontWeight: FontWeight.w400,
                        ),
                        children: [
                          TextSpan(
                            text: 'craig_love ',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: 'and ',
                          ),
                          TextSpan(
                            text: '44,686 others',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
                right: 15.0,
                top: 5.0,
              ),
              child: RichText(
                text: const TextSpan(
                  // text: 'joshua_l',
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Color(0xFF262626),
                    fontWeight: FontWeight.w400,
                  ),
                  children: [
                    TextSpan(
                      text: 'joshua_l',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: ' The game in Japan was amazing and I want '
                          'to share some photos',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
