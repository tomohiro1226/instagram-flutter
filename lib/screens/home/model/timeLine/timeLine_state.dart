import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timeLine_state.freezed.dart';
part 'timeLine_state.g.dart';

@freezed
abstract class TimeLineState with _$TimeLineState {
  factory TimeLineState({
    @Default(0) int id,
    @Default("######") String username,
    @Default("######") String avatar_image,
    @Default(false) bool hasStories,
    @Default("######") String title,
    @Default(0) int favorite_count,
    @Default("######") String text,
    @Default([]) List<String> images_path,
    @required DateTime createdDate,
  }) = _TimeLineDetailState;

  factory TimeLineState.fromJson(Map<String, dynamic> json) =>
      timeLineStateConverter.fromJson(json);

  static const timeLineStateConverter = TimeLineStateConverter();
}

class TimeLineStateConverter
    implements JsonConverter<TimeLineState, Map<String, dynamic>> {
  const TimeLineStateConverter();

  @override
  TimeLineState fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    // JSON配列は明示的に変換する //
    var imagesPath = json['images_path'];
    List<String> images_path = new List<String>.from(imagesPath);

    // 変換方法を指定 //
    return _TimeLineDetailState(
      id: json['id'] as int,
      username: json['username'] as String,
      avatar_image: json['avatar_image'] as String,
      hasStories: false,
      title: json['title'] as String,
      text: json['text'] as String,
      images_path: images_path,
      favorite_count: json['favorite_count'] as int,
      createdDate: DateTime.parse(json['createdDate']),
    );
  }

  @override
  Map<String, dynamic> toJson(TimeLineState data) => data.toJson();
}
