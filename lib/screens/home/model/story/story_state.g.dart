// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoryDetailState _$_$_StoryDetailStateFromJson(Map<String, dynamic> json) {
  return _$_StoryDetailState(
    id: json['id'] as int ?? 0,
    username: json['username'] as String ?? '######',
    avatar_image: json['avatar_image'] as String ?? '######',
    hasStories: json['hasStories'] as bool ?? false,
    images_path:
        (json['images_path'] as List)?.map((e) => e as String)?.toList() ?? [],
    createdDate: json['createdDate'] == null
        ? null
        : DateTime.parse(json['createdDate'] as String),
  );
}

Map<String, dynamic> _$_$_StoryDetailStateToJson(
        _$_StoryDetailState instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'avatar_image': instance.avatar_image,
      'hasStories': instance.hasStories,
      'images_path': instance.images_path,
      'createdDate': instance.createdDate?.toIso8601String(),
    };
