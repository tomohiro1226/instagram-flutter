import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:instagram/components/app_bottom_nav_bar.dart';
import 'package:instagram/components/app_header.dart';
import 'package:instagram/components/repository/story_repository.dart';
import 'package:instagram/components/repository/timeLine_repository.dart';
import 'package:provider/provider.dart';

import '../../cnstants.dart';
import 'components/story_panel.dart';
import 'components/timeLine_panel.dart';

import 'model/body_state.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeader(),
      body: MultiProvider(
        providers: [
          // リポジトリ(サーバからデータを取得クラスの定義)
          Provider(create: (_) => TimeLineRepository()),
          Provider(create: (_) => StoryRepository()),
        ],
        child: StateNotifierProvider<BodyStateNotifier, BodyState>(
          create: (context) => BodyStateNotifier(),
          child: Body(),
        ),
      ),
      bottomNavigationBar: AppBottomNavBar(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      backgroundColor: kPrimaryColor,
      color: Colors.white,
      displacement: 10,
      strokeWidth: 2,
      onRefresh: () async {
        Provider.of<BodyStateNotifier>(context, listen: false).fetchTimeLine();
      },
      child: SingleChildScrollView(
        child: Column(
          children: [
            StoryPanel(),
            TimeLinePanel(),
          ],
        ),
      ),
    );
  }
}
