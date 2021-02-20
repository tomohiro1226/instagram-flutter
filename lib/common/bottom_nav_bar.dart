import 'package:flutter/material.dart';

import 'package:instagram/configs/cnstants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding,
        right: kDefaultPadding,
        bottom: kDefaultPadding,
      ),
      height: 80,
      color: kPrimaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(
              Icons.home_filled,
              color: Colors.white,
              size: 25.0,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.search_rounded,
              color: Colors.white,
              size: 25.0,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.ondemand_video,
              color: Colors.white,
              size: 25.0,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.shopping_bag,
              color: Colors.white,
              size: 25.0,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.person,
              color: Colors.white,
              size: 25.0,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
