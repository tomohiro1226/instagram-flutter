import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:instagram/common/user_icon.dart';
import 'package:instagram/helpers/common.dart';
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
              text: createDateToDay(this.createdDate),
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
