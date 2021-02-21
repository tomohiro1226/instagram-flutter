import 'package:flutter/material.dart';
import 'package:instagram/models/entities/account/account_state.dart';
import 'package:provider/provider.dart';

import 'package:instagram/common/user_icon.dart';
import 'package:intl/intl.dart';

import 'package:instagram/configs/cnstants.dart';
import 'package:instagram/models/controllers/user/user_state.dart';

class CardAddComment extends StatelessWidget {
  const CardAddComment({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 3),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
      child: Row(
        children: [
          UserIcon(
            image: context.watch<UserState>().myAccount.avatar_image,
            width: 30,
            height: 30,
          ),
          Flexible(
            child: Container(
              margin: EdgeInsets.only(left: kDefaultPadding / 2),
              padding: EdgeInsets.only(top: kDefaultPadding / 2),
              height: 30,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "コメントを追加...",
                  hintStyle: TextStyle(
                    color: Colors.white54,
                    fontSize: 12,
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardDatePosted extends StatelessWidget {
  const CardDatePosted({
    Key key,
    this.createdDate,
  }) : super(key: key);

  final DateTime createdDate;

  String getPostDate(DateTime createDate) {
    final now = new DateTime.now();
    final minuteDiff = now.difference(createDate).inMinutes;
    final hoursDiff = now.difference(createDate).inHours;
    final dayDiff = now.difference(createDate).inDays;

    // 1時間以内
    if (hoursDiff <= 0) {
      return minuteDiff.toString() + '分前';
    }
    // 1時間以上 〜 24時間以内
    else if ((hoursDiff > 0) && (hoursDiff <= 24)) {
      return hoursDiff.toString() + '時間前';
    }
    // 24時間以上 〜 15日以内
    else if ((hoursDiff > 24) && (dayDiff <= 15)) {
      return dayDiff.toString() + '日前';
    }
    // それ以外
    else {
      var format = new DateFormat.yMMMd('ja');
      return format.format(createDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding / 3),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
      width: double.infinity,
      child: RichText(
        textAlign: TextAlign.left,
        text: TextSpan(
          children: [
            TextSpan(
              text: getPostDate(this.createdDate),
              style: TextStyle(
                color: Colors.white54,
                fontSize: 12,
              ),
            ),
            // TextSpan(
            //   text: 'See Translation',
            //   style: TextStyle(
            //     color: Colors.white,
            //     fontSize: 12,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
