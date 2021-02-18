import 'package:flutter/material.dart';

import '../../../../cnstants.dart';
import 'content.dart';
import 'footer.dart';
import 'header.dart';

class TimeLineCard extends StatelessWidget {
  const TimeLineCard({
    Key key,
    this.username,
    this.avatar_image,
    this.hasStories,
    this.image,
    this.favorite_count,
    this.text,
    this.createdDate,
  }) : super(key: key);

  final String username;
  final String avatar_image;
  final bool hasStories;
  final String image;
  final int favorite_count;
  final String text;
  final DateTime createdDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      child: Column(
        children: [
          CardHeader(
            username: this.username,
            avatar_image: this.avatar_image,
            hasStories: this.hasStories,
          ),
          CardPostImage(
            image: image,
          ),
          CardNav(),
          CardFavoriteUsers(
            favorite_count: favorite_count,
          ),
          CardPostText(this.username, this.text),
          CardAddComment(),
          CardDatePosted(createdDate: createdDate),
        ],
      ),
    );
  }
}
