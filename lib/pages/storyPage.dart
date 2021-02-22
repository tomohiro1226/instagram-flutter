import 'package:flutter/material.dart';

import 'package:instagram/components/story/page/story_area.dart';
import 'package:instagram/models/entities/story/story_state.dart';

class StoryPage extends StatelessWidget {
  const StoryPage({
    Key key,
    this.storyState,
  }) : super(key: key);

  final StoryState storyState;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(storyState: this.storyState),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key key,
    this.storyState,
  }) : super(key: key);

  final StoryState storyState;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: StoryArea(
        storyState: this.storyState,
      ),
    );
  }
}
