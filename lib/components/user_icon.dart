import 'package:flutter/material.dart';

import '../cnstants.dart';

enum UserIconDecoration {
  GRADATION,
  PASTEL,
  NONE,
}

class UserIcon extends StatelessWidget {
  const UserIcon({
    Key key,
    @required this.image,
    this.width,
    this.height,
    this.userIconDecoration = UserIconDecoration.NONE,
  }) : super(key: key);

  final String image;
  final double width, height;
  final UserIconDecoration userIconDecoration;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: () {
        if (userIconDecoration == UserIconDecoration.GRADATION) {
          return BoxDecoration(
            gradient: LinearGradient(
              begin: FractionalOffset.topRight,
              end: FractionalOffset.bottomLeft,
              colors: [
                Colors.redAccent,
                Colors.yellowAccent,
              ],
            ),
            shape: BoxShape.circle,
          );
        } else if (userIconDecoration == UserIconDecoration.PASTEL) {
          return BoxDecoration(
            border: Border.all(color: Colors.white54),
            shape: BoxShape.circle,
          );
        } else {
          return null;
        }
      }(),
      child: Padding(
        padding: EdgeInsets.all(width / 25),
        child: Container(
          width: width,
          height: height,
          decoration: () {
            if (userIconDecoration != UserIconDecoration.NONE) {
              return BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(50),
              );
            }
          }(),
          child: Padding(
            padding: EdgeInsets.all(width / 20),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
