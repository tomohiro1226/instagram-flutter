import 'package:flutter/material.dart';
import 'package:instagram/components/user_icon.dart';
import 'package:instagram/screens/capture/capture_screen.dart';
import 'package:instagram/screens/story/story_screen.dart';

import '../../../cnstants.dart';

const double kDefaultStoryCardSize = 60.0;
const int TRANSITION_DURATION = 200;

class StoryPanel extends StatelessWidget {
  const StoryPanel({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        color: kPrimaryColor,
        child: Row(
          children: <Widget>[
            YourStory(
              image: "assets/images/bottom_img_2.png",
            ),
            StoryCard(
              username: "tomohiro",
              image: "assets/images/bottom_img_2.png",
              hasStories: false,
            ),
            StoryCard(
              username: "tomohiro2",
              image: "assets/images/bottom_img_2.png",
              hasStories: true,
            ),
            StoryCard(
              username: "tomohiro3",
              image: "assets/images/bottom_img_2.png",
              hasStories: true,
            ),
            StoryCard(
              username: "tomohiro4",
              image: "assets/images/bottom_img_2.png",
              hasStories: false,
            ),
            StoryCard(
              username: "tomohiro5",
              image: "assets/images/bottom_img_2.png",
              hasStories: true,
            ),
          ],
        ),
      ),
    );
  }
}

class YourStory extends StatelessWidget {
  const YourStory({Key key, this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CaptureScreen(),
            ),
          );
        },
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: <Widget>[
                SizedBox(
                  width: kDefaultStoryCardSize,
                  height: kDefaultStoryCardSize,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(image),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 25,
                  height: 25,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: kPrimaryColor,
                    ),
                  ),
                ),
                // [Please Idea] Your Storyのアイコンの背景を力技で白くした
                SizedBox(
                  width: 20,
                  height: 20,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 3, right: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 25,
                  height: 25,
                  child: Icon(
                    Icons.add_circle,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            Text(
              "Your Story",
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StoryCard extends StatelessWidget {
  const StoryCard({
    Key key,
    this.username,
    this.image,
    this.hasStories = false,
  }) : super(key: key);

  final String username, image;
  final bool hasStories;

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
            PageRouteBuilder<StoryScreen>(
              opaque: false,
              pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) {
                return FadeTransition(
                  opacity: animation,
                  child: StoryScreen(tag: username),
                );
              },
              transitionDuration:
                  const Duration(milliseconds: TRANSITION_DURATION),
            ),
          );
        },
        child: Hero(
          tag: username,
          child: Column(
            children: [
              UserIcon(
                image: image,
                width: kDefaultStoryCardSize,
                height: kDefaultStoryCardSize,
                userIconDecoration: (hasStories)
                    ? UserIconDecoration.GRADATION
                    : UserIconDecoration.PASTEL,
              ),
              Text(
                username,
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
