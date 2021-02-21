// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountDetailState _$_$_AccountDetailStateFromJson(
    Map<String, dynamic> json) {
  return _$_AccountDetailState(
    id: json['id'] as int ?? 0,
    username: json['username'] as String ?? '######',
    avatar_image: json['avatar_image'] as String ?? '######',
  );
}

Map<String, dynamic> _$_$_AccountDetailStateToJson(
        _$_AccountDetailState instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'avatar_image': instance.avatar_image,
    };
