import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'storyPage_state.freezed.dart';

enum Stage { idel, run, pause, done }

@freezed
abstract class StoryPageState with _$StoryPageState {
  const factory StoryPageState({
    @Default(Stage.idel) Stage stage,
  }) = _StoryPageDetailState;
}

class StoryPageStateNotifier extends StateNotifier<StoryPageState> {
  StoryPageStateNotifier() : super(const StoryPageState()) {}
}
