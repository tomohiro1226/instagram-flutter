import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/timeLine/timeLine_state.dart';
import '../model/body_state.dart';
import 'timeLine/timeLine_card.dart';

class TimeLinePanel extends StatelessWidget {
  const TimeLinePanel({
    Key key,
  }) : super(key: key);

  Widget getTimeLines(List<TimeLineState> timeLines) {
    List<Widget> list = List<Widget>();
    for (var i = 0; i < timeLines.length; i++) {
      list.add(
        TimeLineCard(
          image: timeLines[i].images_path[0],
          username: timeLines[i].username,
          avatar_image: timeLines[i].avatar_image,
          hasStories: timeLines[i].hasStories,
          favorite_count: timeLines[i].favorite_count,
          text: timeLines[i].text,
          createdDate: timeLines[i].createdDate,
        ),
      );
    }
    return Column(children: list);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        getTimeLines(context.watch<BodyState>().timeLines),
      ],
    );
  }
}
