import 'dart:math';

import 'package:flutter/material.dart';

import 'package:instagram/components/story/page/header.dart';
import 'package:instagram/components/story/page/story_indicator.dart';
import 'package:instagram/configs/cnstants.dart';
import 'package:instagram/models/entities/story/story_state.dart';

const double VERTICAL_SWIPE_THRESHOLD = 200;
const int CONTAINER_REVERSE_DURATION = 100;
const double CONTAINER_MIN_OPACITY = 0.6;

class StoryArea extends StatefulWidget {
  const StoryArea({
    this.storyState,
  }) : super();

  final StoryState storyState;

  @override
  _StoryAreaState createState() => _StoryAreaState();
}

class _StoryAreaState extends State<StoryArea> {
  Offset beginningDragPosition = Offset.zero;
  Offset currentDragPosition = Offset.zero;
  int containerReverseDuration = 0;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onVerticalDragStart: _onVerticalDragStart,
      onVerticalDragUpdate: _onVerticalDragUpdate,
      onVerticalDragEnd: _onVerticalDragEnd,
      child: AnimatedContainer(
        duration: Duration(milliseconds: containerReverseDuration),
        transform: containerVerticalTransform,
        child: Stack(
          children: [
            Hero(
              tag: widget.storyState.username,
              child: Material(
                color: kPrimaryColor,
                child: Container(
                  margin: EdgeInsets.only(top: kDefaultPadding / 3),
                  height: size.height,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(widget.storyState.images_path[0]),
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
                  StoryHeader(
                    username: widget.storyState.username,
                    avator_imag: widget.storyState.avatar_image,
                    createdDate: widget.storyState.createdDate,
                  ),
                ],
              ),
            ),
          ],
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
