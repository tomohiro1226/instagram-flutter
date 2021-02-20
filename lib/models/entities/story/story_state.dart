import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'story_state.freezed.dart';
part 'story_state.g.dart';

@freezed
abstract class StoryState with _$StoryState {
  factory StoryState({
    @Default(0) int id,
    @Default("######") String username,
    @Default("######") String avatar_image,
    @Default(false) bool hasStories,
    @Default([]) List<String> images_path,
    @required DateTime createdDate,
  }) = _StoryDetailState;

  factory StoryState.fromJson(Map<String, dynamic> json) =>
      storyStateConverter.fromJson(json);

  static const storyStateConverter = StoryStateConverter();
}

class StoryStateConverter
    implements JsonConverter<StoryState, Map<String, dynamic>> {
  const StoryStateConverter();

  @override
  StoryState fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    // JSON配列は明示的に変換する //
    var imagesPath = json['images_path'];
    List<String> images_path = new List<String>.from(imagesPath);

    // 変換方法を指定 //
    return _StoryDetailState(
      id: json['id'] as int,
      username: json['username'] as String,
      avatar_image: json['avatar_image'] as String,
      hasStories: true,
      images_path: images_path,
      createdDate: DateTime.parse(json['createdDate']),
    );
  }

  @override
  Map<String, dynamic> toJson(StoryState data) => data.toJson();
}
