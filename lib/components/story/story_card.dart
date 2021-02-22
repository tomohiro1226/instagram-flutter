import 'package:flutter/material.dart';
import 'package:instagram/common/user_icon.dart';
import 'package:instagram/configs/cnstants.dart';
import 'package:instagram/models/entities/story/story_state.dart';
import 'package:instagram/pages/storyPage.dart';

const int TRANSITION_DURATION = 100;

class StoryCard extends StatelessWidget {
  const StoryCard({
    Key key,
    // this.username,
    // this.image,
    // this.hasStories = false,
    this.storyState,
  }) : super(key: key);

  // final String username, image;
  // final bool hasStories;

  final StoryState storyState;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 10,
        bottom: 10,
        left: 6,
        right: 6,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            PageRouteBuilder<StoryPage>(
              opaque: false,
              pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) {
                return FadeTransition(
                  opacity: animation,
                  child: StoryPage(
                    storyState: this.storyState,
                  ),
                );
              },
              transitionDuration:
                  const Duration(milliseconds: TRANSITION_DURATION),
            ),
          );
        },
        child: Hero(
          tag: storyState.username,
          child: Column(
            children: [
              UserIcon(
                image: storyState.avatar_image,
                width: kDefaultStoryCardSize,
                height: kDefaultStoryCardSize,
                userIconDecoration: (storyState.hasStories)
                    ? UserIconDecoration.GRADATION
                    : UserIconDecoration.PASTEL,
              ),
              Text(
                storyState.username,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
