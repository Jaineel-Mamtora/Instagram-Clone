import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  SearchAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height + 56);

  final List<String> chipTitles = [
    'IGTV',
    'Shop',
    'Style',
    'Sports',
    'Auto',
    'Music',
    'Accounts',
    'Tags',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFAFAFA),
      child: SafeArea(
        child: PreferredSize(
          preferredSize: preferredSize,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 8.0,
                        right: 10.0,
                      ),
                      child: TextField(
                        cursorHeight: 20,
                        cursorColor: const Color(0xFF828286),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 24.0,
                            color: Color(0xFF828286),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'Search',
                          filled: true,
                          fillColor: const Color(0xFFEAEAEB),
                          hintStyle: const TextStyle(
                            fontSize: 16,
                            height: 1.38,
                            color: Color(0xFF828286),
                          ),
                        ),
                        style: const TextStyle(
                          fontSize: 16,
                          height: 1.38,
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset(
                        'assets/icons/live.svg',
                        color: const Color(0xFF262626),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 50,
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: chipTitles.length,
                  itemBuilder: (_, index) => Container(
                    margin: const EdgeInsets.only(
                      top: 8.0,
                      bottom: 8.0,
                    ),
                    child: Chip(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0),
                        side: const BorderSide(color: Color(0xFFDCDCDD)),
                      ),
                      label: Text(
                        chipTitles[index],
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF262626),
                        ),
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ),
                  separatorBuilder: (_, index) => const SizedBox(
                    width: 6.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
