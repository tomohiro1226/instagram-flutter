import 'package:flutter/material.dart';
import 'package:instagram/common/user_icon.dart';

import 'package:instagram/configs/cnstants.dart';

class CardHeader extends StatelessWidget {
  const CardHeader({
    Key key,
    this.username,
    this.avatar_image,
    this.hasStories,
  }) : super(key: key);

  final String username;
  final String avatar_image;
  final bool hasStories;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kDefaultPadding / 3),
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
      child: Row(
        children: [
          Container(
            child: UserIcon(
              image: this.avatar_image,
              width: 40,
              height: 40,
              userIconDecoration: (this.hasStories)
                  ? UserIconDecoration.GRADATION
                  : UserIconDecoration.PASTEL,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              this.username,
              style: TextStyle(color: Colors.white),
            ),
          ),
          Spacer(),
          IconButton(
            icon: const Icon(
              Icons.more_horiz,
              color: Colors.white,
              size: 24.0,
            ),
            tooltip: 'tool',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
