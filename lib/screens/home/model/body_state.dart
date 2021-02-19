import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagram/components/repository/story_repository.dart';
import 'package:instagram/components/repository/timeLine_repository.dart';
import 'package:state_notifier/state_notifier.dart';

import 'dart:async';

import 'story/story_state.dart';
import 'timeLine/timeLine_state.dart';

part 'body_state.freezed.dart';

@freezed
abstract class BodyState with _$BodyState {
  const factory BodyState({
    @Default(<StoryState>[]) List<StoryState> stories,
    @Default(<TimeLineState>[]) List<TimeLineState> timeLines,
  }) = _BodyDetailState;
}

class BodyStateNotifier extends StateNotifier<BodyState> with LocatorMixin {
  TimeLineRepository get _timeLineRepository => read<TimeLineRepository>();
  StoryRepository get _storyRepository => read<StoryRepository>();

  BodyStateNotifier() : super(const BodyState()) {}

  @override
  void initState() {
    super.initState();

    // ストーリーを取得する
    fetchStories();

    // タイムラインを取得する
    fetchTimeLine();
  }

  Future<void> fetchStories() async {
    final storiesList = List<StoryState>.from(state.stories);

    _storyRepository.fetch().then((stories) {
      final currentState = state;

      if (currentState is _BodyDetailState) {
        for (Map<String, dynamic> story in stories['stories']) {
          storiesList.add(StoryState.fromJson(story));
        }

        // Storyを更新
        state = currentState.copyWith(
          stories: storiesList,
        );
      }
    });
  }

  Future<void> fetchTimeLine() async {
    final timeLinesList = List<TimeLineState>.from(state.timeLines);

    _timeLineRepository.fetch().then((timeLines) {
      final currentState = state;

      if (currentState is _BodyDetailState) {
        for (Map<String, dynamic> timeLine in timeLines['timelines']) {
          timeLinesList.add(TimeLineState.fromJson(timeLine));
        }

        // Storyを更新
        state = currentState.copyWith(
          timeLines: timeLinesList,
        );
      }
    });
  }
}
