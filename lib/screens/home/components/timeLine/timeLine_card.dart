import 'package:flutter/material.dart';

import '../../model/timeLine/timeLine_state.dart';

import '../../../../cnstants.dart';
import 'content.dart';
import 'footer.dart';
import 'header.dart';

class TimeLineCard extends StatelessWidget {
  const TimeLineCard({
    Key key,
    this.timeLineState,
  }) : super(key: key);

  final TimeLineState timeLineState;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      child: Column(
        children: [
          CardHeader(
            username: timeLineState.username,
            avatar_image: timeLineState.avatar_image,
            hasStories: timeLineState.hasStories,
          ),
          CardPostMain(timeLineState.images_path),
          CardFavoriteUsers(favorite_count: timeLineState.favorite_count),
          CardPostText(timeLineState.username, timeLineState.text),
          CardAddComment(),
          CardDatePosted(createdDate: timeLineState.createdDate),
        ],
      ),
    );
  }
}
