// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeLine_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimeLineDetailState _$_$_TimeLineDetailStateFromJson(
    Map<String, dynamic> json) {
  return _$_TimeLineDetailState(
    id: json['id'] as int ?? 0,
    username: json['username'] as String ?? '######',
    avatar_image: json['avatar_image'] as String ?? '######',
    hasStories: json['hasStories'] as bool ?? false,
    title: json['title'] as String ?? '######',
    favorite_count: json['favorite_count'] as int ?? 0,
    text: json['text'] as String ?? '######',
    images_path:
        (json['images_path'] as List)?.map((e) => e as String)?.toList() ?? [],
    createdDate: json['createdDate'] == null
        ? null
        : DateTime.parse(json['createdDate'] as String),
  );
}

Map<String, dynamic> _$_$_TimeLineDetailStateToJson(
        _$_TimeLineDetailState instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'avatar_image': instance.avatar_image,
      'hasStories': instance.hasStories,
      'title': instance.title,
      'favorite_count': instance.favorite_count,
      'text': instance.text,
      'images_path': instance.images_path,
      'createdDate': instance.createdDate?.toIso8601String(),
    };
