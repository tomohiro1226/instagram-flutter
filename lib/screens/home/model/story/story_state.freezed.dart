// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'story_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
StoryState _$StoryStateFromJson(Map<String, dynamic> json) {
  return _StoryDetailState.fromJson(json);
}

/// @nodoc
class _$StoryStateTearOff {
  const _$StoryStateTearOff();

// ignore: unused_element
  _StoryDetailState call(
      {int id = 0,
      String username = "######",
      String avatar_image = "######",
      bool hasStories = false,
      List<String> images_path = const [],
      @required DateTime createdDate}) {
    return _StoryDetailState(
      id: id,
      username: username,
      avatar_image: avatar_image,
      hasStories: hasStories,
      images_path: images_path,
      createdDate: createdDate,
    );
  }

// ignore: unused_element
  StoryState fromJson(Map<String, Object> json) {
    return StoryState.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $StoryState = _$StoryStateTearOff();

/// @nodoc
mixin _$StoryState {
  int get id;
  String get username;
  String get avatar_image;
  bool get hasStories;
  List<String> get images_path;
  DateTime get createdDate;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $StoryStateCopyWith<StoryState> get copyWith;
}

/// @nodoc
abstract class $StoryStateCopyWith<$Res> {
  factory $StoryStateCopyWith(
          StoryState value, $Res Function(StoryState) then) =
      _$StoryStateCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String username,
      String avatar_image,
      bool hasStories,
      List<String> images_path,
      DateTime createdDate});
}

/// @nodoc
class _$StoryStateCopyWithImpl<$Res> implements $StoryStateCopyWith<$Res> {
  _$StoryStateCopyWithImpl(this._value, this._then);

  final StoryState _value;
  // ignore: unused_field
  final $Res Function(StoryState) _then;

  @override
  $Res call({
    Object id = freezed,
    Object username = freezed,
    Object avatar_image = freezed,
    Object hasStories = freezed,
    Object images_path = freezed,
    Object createdDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      username: username == freezed ? _value.username : username as String,
      avatar_image: avatar_image == freezed
          ? _value.avatar_image
          : avatar_image as String,
      hasStories:
          hasStories == freezed ? _value.hasStories : hasStories as bool,
      images_path: images_path == freezed
          ? _value.images_path
          : images_path as List<String>,
      createdDate:
          createdDate == freezed ? _value.createdDate : createdDate as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$StoryDetailStateCopyWith<$Res>
    implements $StoryStateCopyWith<$Res> {
  factory _$StoryDetailStateCopyWith(
          _StoryDetailState value, $Res Function(_StoryDetailState) then) =
      __$StoryDetailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String username,
      String avatar_image,
      bool hasStories,
      List<String> images_path,
      DateTime createdDate});
}

/// @nodoc
class __$StoryDetailStateCopyWithImpl<$Res>
    extends _$StoryStateCopyWithImpl<$Res>
    implements _$StoryDetailStateCopyWith<$Res> {
  __$StoryDetailStateCopyWithImpl(
      _StoryDetailState _value, $Res Function(_StoryDetailState) _then)
      : super(_value, (v) => _then(v as _StoryDetailState));

  @override
  _StoryDetailState get _value => super._value as _StoryDetailState;

  @override
  $Res call({
    Object id = freezed,
    Object username = freezed,
    Object avatar_image = freezed,
    Object hasStories = freezed,
    Object images_path = freezed,
    Object createdDate = freezed,
  }) {
    return _then(_StoryDetailState(
      id: id == freezed ? _value.id : id as int,
      username: username == freezed ? _value.username : username as String,
      avatar_image: avatar_image == freezed
          ? _value.avatar_image
          : avatar_image as String,
      hasStories:
          hasStories == freezed ? _value.hasStories : hasStories as bool,
      images_path: images_path == freezed
          ? _value.images_path
          : images_path as List<String>,
      createdDate:
          createdDate == freezed ? _value.createdDate : createdDate as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_StoryDetailState
    with DiagnosticableTreeMixin
    implements _StoryDetailState {
  _$_StoryDetailState(
      {this.id = 0,
      this.username = "######",
      this.avatar_image = "######",
      this.hasStories = false,
      this.images_path = const [],
      @required this.createdDate})
      : assert(id != null),
        assert(username != null),
        assert(avatar_image != null),
        assert(hasStories != null),
        assert(images_path != null),
        assert(createdDate != null);

  factory _$_StoryDetailState.fromJson(Map<String, dynamic> json) =>
      _$_$_StoryDetailStateFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int id;
  @JsonKey(defaultValue: "######")
  @override
  final String username;
  @JsonKey(defaultValue: "######")
  @override
  final String avatar_image;
  @JsonKey(defaultValue: false)
  @override
  final bool hasStories;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> images_path;
  @override
  final DateTime createdDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StoryState(id: $id, username: $username, avatar_image: $avatar_image, hasStories: $hasStories, images_path: $images_path, createdDate: $createdDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StoryState'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('avatar_image', avatar_image))
      ..add(DiagnosticsProperty('hasStories', hasStories))
      ..add(DiagnosticsProperty('images_path', images_path))
      ..add(DiagnosticsProperty('createdDate', createdDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StoryDetailState &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.avatar_image, avatar_image) ||
                const DeepCollectionEquality()
                    .equals(other.avatar_image, avatar_image)) &&
            (identical(other.hasStories, hasStories) ||
                const DeepCollectionEquality()
                    .equals(other.hasStories, hasStories)) &&
            (identical(other.images_path, images_path) ||
                const DeepCollectionEquality()
                    .equals(other.images_path, images_path)) &&
            (identical(other.createdDate, createdDate) ||
                const DeepCollectionEquality()
                    .equals(other.createdDate, createdDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(avatar_image) ^
      const DeepCollectionEquality().hash(hasStories) ^
      const DeepCollectionEquality().hash(images_path) ^
      const DeepCollectionEquality().hash(createdDate);

  @JsonKey(ignore: true)
  @override
  _$StoryDetailStateCopyWith<_StoryDetailState> get copyWith =>
      __$StoryDetailStateCopyWithImpl<_StoryDetailState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StoryDetailStateToJson(this);
  }
}

abstract class _StoryDetailState implements StoryState {
  factory _StoryDetailState(
      {int id,
      String username,
      String avatar_image,
      bool hasStories,
      List<String> images_path,
      @required DateTime createdDate}) = _$_StoryDetailState;

  factory _StoryDetailState.fromJson(Map<String, dynamic> json) =
      _$_StoryDetailState.fromJson;

  @override
  int get id;
  @override
  String get username;
  @override
  String get avatar_image;
  @override
  bool get hasStories;
  @override
  List<String> get images_path;
  @override
  DateTime get createdDate;
  @override
  @JsonKey(ignore: true)
  _$StoryDetailStateCopyWith<_StoryDetailState> get copyWith;
}
