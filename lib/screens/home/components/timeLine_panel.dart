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
    for (TimeLineState timeLine in timeLines) {
      list.add(
        TimeLineCard(timeLineState: timeLine),
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
