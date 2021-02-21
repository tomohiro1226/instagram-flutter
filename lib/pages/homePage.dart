import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

import 'package:instagram/common/bottom_nav_bar.dart';
import 'package:instagram/components/home/header.dart';
import 'package:instagram/components/story/story_panel.dart';
import 'package:instagram/components/timeLine/timeLine_panel.dart';
import 'package:instagram/configs/cnstants.dart';
import 'package:instagram/models/controllers/home/home_state.dart';
import 'package:instagram/models/controllers/user/user_state.dart';
import 'package:instagram/models/repository/story_repository.dart';
import 'package:instagram/models/repository/account_repository.dart';
import 'package:instagram/models/repository/timeLine_repository.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeHeader(),
      body: MultiProvider(
        providers: [
          // リポジトリ(サーバからデータを取得クラスの定義)
          Provider(create: (_) => TimeLineRepository()),
          Provider(create: (_) => StoryRepository()),
          Provider(create: (_) => AccountRepository()),
        ],
        child: MultiProvider(
          // コントローラ
          providers: [
            StateNotifierProvider<HomeStateNotifier, HomeState>(
                create: (context) => HomeStateNotifier()),
            StateNotifierProvider<UserStateNotifier, UserState>(
                create: (context) => UserStateNotifier()),
          ],
          child: Body(),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CupertinoSliverRefreshControl(
          onRefresh: () async {
            await Provider.of<HomeStateNotifier>(context, listen: false)
                .fetchTimeLine();
          },
        ),
        StoryPanel(),
        TimeLinePanel(),
      ],
    );
  }
}
