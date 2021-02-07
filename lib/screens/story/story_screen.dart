import 'package:flutter/material.dart';
import 'package:instagram/screens/story/components/body.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({
    Key key,
    this.tag,
  }) : super(key: key);

  final String tag;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(tag: tag),
    );
  }
}
