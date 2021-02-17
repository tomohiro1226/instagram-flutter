import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/timeLine/timeLine_state.dart';
import '../model/body_state.dart';
import 'timeLine_card.dart';

class TimeLinePanel extends StatelessWidget {
  const TimeLinePanel({
    Key key,
  }) : super(key: key);

  Widget getTimeLines(List<TimeLineState> timeLines) {
    print('getTimeLines');
    List<Widget> list = List<Widget>();
    for (var i = 0; i < timeLines.length; i++) {
      final id = timeLines[i].id;
      list.add(
        TimeLineCard(
          image: 'assets/images/img.png',
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
