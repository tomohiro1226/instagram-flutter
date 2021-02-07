import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram/cnstants.dart';
import 'package:instagram/components/app_bottom_nav_bar.dart';
import 'package:instagram/components/app_header.dart';

import 'components/story_panel.dart';
import 'components/time_line_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeader(),
      body: HomeBody(),
      bottomNavigationBar: AppBottomNavBar(),
    );
  }
}

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      backgroundColor: kPrimaryColor,
      color: Colors.white,
      displacement: 10,
      strokeWidth: 2,
      onRefresh: () async {
        print("tomohiro");
        await Future.delayed(Duration(seconds: 2));
      },
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            StoryPanel(),
            TimeLineCard(
              image: "assets/images/img.png",
            ),
            TimeLineCard(
              image: "assets/images/img.png",
            ),
            TimeLineCard(
              image: "assets/images/img.png",
            ),
          ],
        ),
      ),
    );
  }
}
