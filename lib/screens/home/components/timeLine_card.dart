import 'package:flutter/material.dart';
import 'package:instagram/components/user_icon.dart';

import '../../../cnstants.dart';

class TimeLineCard extends StatelessWidget {
  const TimeLineCard({Key key, this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      child: Column(
        children: [
          CardHeader(),
          CardPostImage(image: image),
          CardNav(),
          CardFavoriteUsers(),
          CardPostText(),
          CardAddComment(),
          CardDatePosted(),
        ],
      ),
    );
  }
}

class CardDatePosted extends StatelessWidget {
  const CardDatePosted({
    Key key,
  }) : super(key: key);

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
              text: '3 ',
              style: TextStyle(
                color: Colors.white54,
                fontSize: 12,
              ),
            ),
            TextSpan(
              text: 'days ago ・ ',
              style: TextStyle(
                color: Colors.white54,
                fontSize: 12,
              ),
            ),
            TextSpan(
              text: 'See Translation',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
            image: "assets/images/bottom_img_2.png",
            width: 30,
            height: 30,
          ),
          Flexible(
            child: Container(
              padding: EdgeInsets.only(left: kDefaultPadding / 2),
              height: 30,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Add a comment...",
                  hintStyle: TextStyle(
                    color: Colors.white54,
                    fontSize: 15,
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

class CardPostText extends StatefulWidget {
  @override
  _CardPostTextState createState() => _CardPostTextState();
}

class _CardPostTextState extends State<CardPostText> {
  bool _show = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(left: kDefaultPadding / 2),
          width: (_show) ? size.width : size.width * 0.6,
          child: RichText(
            textAlign: TextAlign.left,
            overflow: (_show) ? TextOverflow.visible : TextOverflow.ellipsis,
            text: TextSpan(
              children: [
                TextSpan(text: 'Tomohiro '),
                TextSpan(text: '#観葉植物 #家 #気分転換 家に観葉植物を置くことにしました。'),
              ],
            ),
          ),
        ),
        Visibility(
          visible: !_show,
          child: GestureDetector(
            onTap: () {
              setState(() {
                _show = true;
              });
            },
            child: Text("more"),
          ),
        ),
        // if (!_show)
        //   GestureDetector(
        //     onTap: () {
        //       setState(() {
        //         _show = true;
        //       });
        //     },
        //     child: Text("more"),
        //   ),
        Spacer(),
      ],
    );
  }
}

class CardFavoriteUsers extends StatelessWidget {
  const CardFavoriteUsers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
      width: double.infinity,
      child: RichText(
        textAlign: TextAlign.left,
        text: TextSpan(
          children: [
            TextSpan(text: 'Liked by '),
            TextSpan(text: 'Tomohiro'),
            TextSpan(text: ' and others'),
          ],
        ),
      ),
    );
  }
}

class CardPostImage extends StatelessWidget {
  const CardPostImage({
    Key key,
    @required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding / 3),
      height: size.height * 0.35,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
      ),
    );
  }
}

class CardNav extends StatelessWidget {
  const CardNav({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(
            Icons.favorite_border_rounded,
            color: Colors.white,
            size: 24.0,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            Icons.mode_comment_outlined,
            color: Colors.white,
            size: 24.0,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            Icons.share,
            color: Colors.white,
            size: 24.0,
          ),
          onPressed: () {},
        ),
        Spacer(),
        IconButton(
          icon: const Icon(
            Icons.bookmark_border,
            color: Colors.white,
            size: 24.0,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}

class CardHeader extends StatelessWidget {
  const CardHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kDefaultPadding / 3),
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
      child: Row(
        children: [
          Container(
            child: UserIcon(
              image: "assets/images/bottom_img_2.png",
              width: 40,
              height: 40,
              userIconDecoration: UserIconDecoration.GRADATION,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'tomohiro',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Spacer(),
          IconButton(
            icon: const Icon(
              Icons.more_horiz,
              color: Colors.white,
              size: 24.0,
            ),
            tooltip: 'New Post',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
