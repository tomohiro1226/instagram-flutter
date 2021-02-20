import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget with PreferredSizeWidget {
  HomeHeader();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: const Text(
          'Instagram',
          style: TextStyle(
            fontFamily: "Pacifico",
            fontSize: 22,
          ),
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.add_box_outlined,
            color: Colors.white,
            size: 24.0,
          ),
          tooltip: 'New Post',
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            Icons.favorite_border_rounded,
            color: Colors.white,
            size: 24.0,
          ),
          tooltip: 'Favorite',
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            Icons.send,
            color: Colors.white,
            size: 22.0,
          ),
          tooltip: 'Message',
          onPressed: () {},
        ),
      ],
    );
  }
}
