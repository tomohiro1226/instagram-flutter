import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import 'package:instagram/common/user_icon.dart';
import 'package:instagram/configs/cnstants.dart';

class StoryPage extends StatelessWidget {
  const StoryPage({
    Key key,
    this.tag,
  }) : super(key: key);

  final String tag;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(tag: tag),
    );
  }
}

const double VERTICAL_SWIPE_THRESHOLD = 200;
const int CONTAINER_REVERSE_DURATION = 200;
const double CONTAINER_MIN_OPACITY = 0.6;

class Body extends StatefulWidget {
  const Body({
    Key key,
    this.tag,
  }) : super(key: key);

  final String tag;

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Offset beginningDragPosition = Offset.zero;
  Offset currentDragPosition = Offset.zero;
  int containerReverseDuration = 0;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: GestureDetector(
        onVerticalDragStart: _onVerticalDragStart,
        onVerticalDragUpdate: _onVerticalDragUpdate,
        onVerticalDragEnd: _onVerticalDragEnd,
        child: AnimatedContainer(
          duration: Duration(milliseconds: containerReverseDuration),
          transform: containerVerticalTransform,
          child: Stack(
            children: [
              Hero(
                tag: widget.tag,
                child: Material(
                  color: kPrimaryColor,
                  child: Container(
                    margin: EdgeInsets.only(top: kDefaultPadding / 3),
                    height: size.height,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/img.png"),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
                child: Column(
                  children: [
                    StoriesIndicator(),
                    StoryHeader(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  double get containerBackgroundOpacity {
    return max(
        1.0 - currentDragPosition.distance * 0.003, CONTAINER_MIN_OPACITY);
  }

  Matrix4 get containerVerticalTransform {
    final Matrix4 translationTransform = Matrix4.translationValues(
      0,
      currentDragPosition.dy,
      0.0,
    );

    return translationTransform;
  }

  void _onVerticalDragStart(DragStartDetails details) {
    setState(() {
      containerReverseDuration = 0;
    });
    beginningDragPosition = details.globalPosition;
  }

  void _onVerticalDragUpdate(DragUpdateDetails details) {
    setState(() {
      currentDragPosition = Offset(
        0,
        details.globalPosition.dy - beginningDragPosition.dy,
      );
    });
  }

  void _onVerticalDragEnd(DragEndDetails details) {
    if (currentDragPosition.distance < VERTICAL_SWIPE_THRESHOLD) {
      setState(() {
        currentDragPosition = Offset.zero;
        containerReverseDuration = CONTAINER_REVERSE_DURATION;
      });
    } else {
      Navigator.of(context).pop();
    }
  }
}

class StoriesIndicator extends StatefulWidget {
  @override
  _StoriesIndicatorState createState() => _StoriesIndicatorState();
}

class _StoriesIndicatorState extends State<StoriesIndicator> {
  var _value = 0.0;
  var _timer;

  @override
  void initState() {
    const timeout = const Duration(milliseconds: 100);

    _timer = Timer.periodic(timeout, (Timer t) {
      setState(() {
        _value = _value + 0.025;
        if (_value > 1.025) {
          // _value = 0.0;
          _timer.cancel();
          Navigator.pop(context);
        }
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kDefaultPadding),
      height: 2,
      child: LinearProgressIndicator(
        value: _value,
        backgroundColor: Colors.white54,
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
      ),
    );
  }
}

class StoryHeader extends StatelessWidget {
  const StoryHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            child: UserIcon(
              image: "assets/images/bottom_img_2.png",
              width: 35,
              height: 35,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'tomohiro',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              '20h',
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
            tooltip: 'New Post',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.close_outlined,
              color: Colors.white,
              size: 35.0,
            ),
            tooltip: 'New Post',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

