import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
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
  bool _isLoading = false;

  BodyStateNotifier() : super(const BodyState()) {
    // ストーリーを取得する
    fetchStories();

    // タイムラインを取得する
    fetchTimeLine();
  }

  Future<void> fetchStories() async {
    if (_isLoading) return;

    const url = 'https://run.mocky.io/v3/18115e73-bfff-4239-bc5d-b5d65e603a87';
    http
        .get(url)
        .then((response) {
          final currentState = state;

          if (currentState is _BodyDetailState) {
            final stories =
                StoryState.fromJson(convert.jsonDecode(response.body));

            final storiesList = currentState.stories.toList()..add(stories);

            // Storyを更新
            state = currentState.copyWith(
              stories: storiesList,
            );
          }
        })
        .catchError((error) => print(error))
        .whenComplete(() => print("done."));
  }

  Future<void> fetchTimeLine() async {
    final timeLinesList = List<TimeLineState>.from(state.timeLines);

    const url = 'https://run.mocky.io/v3/6e9600c1-7fb0-4125-9bd3-b3d13bd407ac';
    http
        .get(url)
        .then((response) {
          final timeLines = convert.jsonDecode(response.body);

          for (Map<String, dynamic> timeLine in timeLines['stories']) {
            timeLinesList.add(TimeLineState.fromJson(timeLine));
          }

          // TimeLineを更新
          state = state.copyWith(timeLines: timeLinesList);
        })
        .catchError((error) => print(error))
        .whenComplete(() => print("done."));
  }
}
