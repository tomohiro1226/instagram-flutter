import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:instagram/models/controllers/home/home_state.dart';
import 'package:instagram/components/timeLine/timeLine_card.dart';
import 'package:instagram/models/entities/timeLine/timeLine_state.dart';

class TimeLinePanel extends StatelessWidget {
  const TimeLinePanel({
    Key key,
  }) : super(key: key);

  Widget getTimeLines(List<TimeLineState> timeLines) {
    List<Widget> list = List<Widget>();
    for (TimeLineState timeLine in timeLines) {
      list.add(
        TimeLineCard(timeLineState: timeLine),
      );
    }
    return Column(children: list);
  }

  @override
  Widget build(BuildContext context) {
    List<TimeLineState> timeLineState = context.watch<HomeState>().timeLines;

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return TimeLineCard(timeLineState: timeLineState[index]);
        },
        childCount: timeLineState.length,
      ),
    );
  }
}
