import 'package:flutter/material.dart';
import 'package:instagram/models/controllers/user/user_state.dart';
import 'package:provider/provider.dart';

import 'package:instagram/components/story/story_card.dart';
import 'package:instagram/components/story/your_story_card.dart';

import 'package:instagram/configs/cnstants.dart';
import 'package:instagram/models/controllers/home/home_state.dart';
import 'package:instagram/models/entities/story/story_state.dart';

class StoryPanel extends StatelessWidget {
  const StoryPanel({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 「CustomScrollView」では子要素をSliverにする必要がある(?)
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return StoryScrollArea();
        },
        // StoryScrollAreaのみの要素のため要素数は1とする
        childCount: 1,
      ),
    );
  }
}

class StoryScrollArea extends StatelessWidget {
  const StoryScrollArea({
    Key key,
  }) : super(key: key);

  Widget getStories(List<StoryState> stories) {
    List<Widget> list = List<Widget>();

    for (StoryState story in stories) {
      list.add(
        StoryCard(storyState: story),
      );
    }
    return Row(children: list);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        color: kPrimaryColor,
        child: Row(
          children: <Widget>[
            YourStoryCard(
              image: context.watch<UserState>().myAccount.avatar_image,
            ),
            getStories(context.watch<HomeState>().stories),
          ],
        ),
      ),
    );
  }
}
