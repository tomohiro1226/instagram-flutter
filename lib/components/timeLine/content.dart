import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:instagram/configs/cnstants.dart';


class CardPostMain extends StatefulWidget {
  final List<String> images;
  // コンストラクタ
  CardPostMain(this.images);

  @override
  _CardPostMainState createState() => _CardPostMainState();
}

class _CardPostMainState extends State<CardPostMain> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          // 写真スライダー
          child: CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
            ),
            items: widget.images
                .map((item) => Container(
                      child: Center(
                        child: Image.network(
                          item,
                          fit: BoxFit.cover,
                          height: size.height * 0.45,
                          width: size.width,
                        ),
                      ),
                    ))
                .toList(),
          ),
        ),
        Stack(
          children: <Widget>[
            // インジゲーター
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.images.map((url) {
                int index = widget.images.indexOf(url);
                return Container(
                  width: 6.5,
                  height: 6.5,
                  margin: EdgeInsets.symmetric(
                      vertical: kDefaultPadding, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                        ? Color.fromRGBO(52, 125, 235, 0.9)
                        : Color.fromRGBO(255, 255, 255, 0.4),
                  ),
                );
              }).toList(),
            ),
            // ナビメニュー
            Row(
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
            ),
          ],
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
