import 'package:flutter/material.dart';
import 'package:instagram/configs/cnstants.dart';
import 'package:instagram/pages/capturePage.dart';

class YourStoryCard extends StatelessWidget {
  const YourStoryCard({Key key, this.image}) : super(key: key);

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
              builder: (context) => CapturePage(),
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
