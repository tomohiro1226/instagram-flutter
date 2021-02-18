import 'package:flutter/material.dart';

import '../../../../cnstants.dart';

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

class CardFavoriteUsers extends StatelessWidget {
  const CardFavoriteUsers({
    Key key,
    this.favorite_count,
  }) : super(key: key);

  final int favorite_count;

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

class CardPostText extends StatefulWidget {
  final String text;
  final String username;
  CardPostText(this.username, this.text);

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
                TextSpan(text: widget.username + ' '),
                TextSpan(text: widget.text),
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
        Spacer(),
      ],
    );
  }
}
