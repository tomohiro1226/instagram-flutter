import 'package:flutter/material.dart';

import 'package:instagram/common/user_icon.dart';
import 'package:instagram/helpers/common.dart';

class StoryHeader extends StatelessWidget {
  const StoryHeader({
    Key key,
    this.username,
    this.avator_imag,
    this.createdDate,
  }) : super(key: key);

  final String username;
  final String avator_imag;
  final DateTime createdDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            child: UserIcon(
              image: this.avator_imag,
              width: 35,
              height: 35,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              this.username,
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              createDateToDay(this.createdDate),
              style: TextStyle(color: Colors.white54),
            ),
          ),
          Spacer(),
          IconButton(
            icon: const Icon(
              Icons.more_horiz,
              color: Colors.white,
              size: 24.0,
            ),
            tooltip: 'menu',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.close_outlined,
              color: Colors.white,
              size: 35.0,
            ),
            tooltip: 'close',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
