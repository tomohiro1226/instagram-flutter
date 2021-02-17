// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'timeLine_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TimeLineState _$TimeLineStateFromJson(Map<String, dynamic> json) {
  return _TimeLineDetailState.fromJson(json);
}

/// @nodoc
class _$TimeLineStateTearOff {
  const _$TimeLineStateTearOff();

// ignore: unused_element
  _TimeLineDetailState call(
      {int id = 0,
      String username = "######",
      String avatar_image = "######",
      bool hasStories = false,
      String title = "######",
      int favorite_count = 0,
      String text = "######",
      List<String> images_path = const [],
      @required DateTime createdDate}) {
    return _TimeLineDetailState(
      id: id,
      username: username,
      avatar_image: avatar_image,
      hasStories: hasStories,
      title: title,
      favorite_count: favorite_count,
      text: text,
      images_path: images_path,
      createdDate: createdDate,
    );
  }

// ignore: unused_element
  TimeLineState fromJson(Map<String, Object> json) {
    return TimeLineState.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TimeLineState = _$TimeLineStateTearOff();

/// @nodoc
mixin _$TimeLineState {
  int get id;
  String get username;
  String get avatar_image;
  bool get hasStories;
  String get title;
  int get favorite_count;
  String get text;
  List<String> get images_path;
  DateTime get createdDate;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TimeLineStateCopyWith<TimeLineState> get copyWith;
}

/// @nodoc
abstract class $TimeLineStateCopyWith<$Res> {
  factory $TimeLineStateCopyWith(
          TimeLineState value, $Res Function(TimeLineState) then) =
      _$TimeLineStateCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String username,
      String avatar_image,
      bool hasStories,
      String title,
      int favorite_count,
      String text,
      List<String> images_path,
      DateTime createdDate});
}

/// @nodoc
class _$TimeLineStateCopyWithImpl<$Res>
    implements $TimeLineStateCopyWith<$Res> {
  _$TimeLineStateCopyWithImpl(this._value, this._then);

  final TimeLineState _value;
  // ignore: unused_field
  final $Res Function(TimeLineState) _then;

  @override
  $Res call({
    Object id = freezed,
    Object username = freezed,
    Object avatar_image = freezed,
    Object hasStories = freezed,
    Object title = freezed,
    Object favorite_count = freezed,
    Object text = freezed,
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
      title: title == freezed ? _value.title : title as String,
      favorite_count: favorite_count == freezed
          ? _value.favorite_count
          : favorite_count as int,
      text: text == freezed ? _value.text : text as String,
      images_path: images_path == freezed
          ? _value.images_path
          : images_path as List<String>,
      createdDate:
          createdDate == freezed ? _value.createdDate : createdDate as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$TimeLineDetailStateCopyWith<$Res>
    implements $TimeLineStateCopyWith<$Res> {
  factory _$TimeLineDetailStateCopyWith(_TimeLineDetailState value,
          $Res Function(_TimeLineDetailState) then) =
      __$TimeLineDetailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String username,
      String avatar_image,
      bool hasStories,
      String title,
      int favorite_count,
      String text,
      List<String> images_path,
      DateTime createdDate});
}

/// @nodoc
class __$TimeLineDetailStateCopyWithImpl<$Res>
    extends _$TimeLineStateCopyWithImpl<$Res>
    implements _$TimeLineDetailStateCopyWith<$Res> {
  __$TimeLineDetailStateCopyWithImpl(
      _TimeLineDetailState _value, $Res Function(_TimeLineDetailState) _then)
      : super(_value, (v) => _then(v as _TimeLineDetailState));

  @override
  _TimeLineDetailState get _value => super._value as _TimeLineDetailState;

  @override
  $Res call({
    Object id = freezed,
    Object username = freezed,
    Object avatar_image = freezed,
    Object hasStories = freezed,
    Object title = freezed,
    Object favorite_count = freezed,
    Object text = freezed,
    Object images_path = freezed,
    Object createdDate = freezed,
  }) {
    return _then(_TimeLineDetailState(
      id: id == freezed ? _value.id : id as int,
      username: username == freezed ? _value.username : username as String,
      avatar_image: avatar_image == freezed
          ? _value.avatar_image
          : avatar_image as String,
      hasStories:
          hasStories == freezed ? _value.hasStories : hasStories as bool,
      title: title == freezed ? _value.title : title as String,
      favorite_count: favorite_count == freezed
          ? _value.favorite_count
          : favorite_count as int,
      text: text == freezed ? _value.text : text as String,
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
class _$_TimeLineDetailState
    with DiagnosticableTreeMixin
    implements _TimeLineDetailState {
  _$_TimeLineDetailState(
      {this.id = 0,
      this.username = "######",
      this.avatar_image = "######",
      this.hasStories = false,
      this.title = "######",
      this.favorite_count = 0,
      this.text = "######",
      this.images_path = const [],
      @required this.createdDate})
      : assert(id != null),
        assert(username != null),
        assert(avatar_image != null),
        assert(hasStories != null),
        assert(title != null),
        assert(favorite_count != null),
        assert(text != null),
        assert(images_path != null),
        assert(createdDate != null);

  factory _$_TimeLineDetailState.fromJson(Map<String, dynamic> json) =>
      _$_$_TimeLineDetailStateFromJson(json);

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
  @JsonKey(defaultValue: "######")
  @override
  final String title;
  @JsonKey(defaultValue: 0)
  @override
  final int favorite_count;
  @JsonKey(defaultValue: "######")
  @override
  final String text;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> images_path;
  @override
  final DateTime createdDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimeLineState(id: $id, username: $username, avatar_image: $avatar_image, hasStories: $hasStories, title: $title, favorite_count: $favorite_count, text: $text, images_path: $images_path, createdDate: $createdDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimeLineState'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('avatar_image', avatar_image))
      ..add(DiagnosticsProperty('hasStories', hasStories))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('favorite_count', favorite_count))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('images_path', images_path))
      ..add(DiagnosticsProperty('createdDate', createdDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TimeLineDetailState &&
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
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.favorite_count, favorite_count) ||
                const DeepCollectionEquality()
                    .equals(other.favorite_count, favorite_count)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
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
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(favorite_count) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(images_path) ^
      const DeepCollectionEquality().hash(createdDate);

  @JsonKey(ignore: true)
  @override
  _$TimeLineDetailStateCopyWith<_TimeLineDetailState> get copyWith =>
      __$TimeLineDetailStateCopyWithImpl<_TimeLineDetailState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TimeLineDetailStateToJson(this);
  }
}

abstract class _TimeLineDetailState implements TimeLineState {
  factory _TimeLineDetailState(
      {int id,
      String username,
      String avatar_image,
      bool hasStories,
      String title,
      int favorite_count,
      String text,
      List<String> images_path,
      @required DateTime createdDate}) = _$_TimeLineDetailState;

  factory _TimeLineDetailState.fromJson(Map<String, dynamic> json) =
      _$_TimeLineDetailState.fromJson;

  @override
  int get id;
  @override
  String get username;
  @override
  String get avatar_image;
  @override
  bool get hasStories;
  @override
  String get title;
  @override
  int get favorite_count;
  @override
  String get text;
  @override
  List<String> get images_path;
  @override
  DateTime get createdDate;
  @override
  @JsonKey(ignore: true)
  _$TimeLineDetailStateCopyWith<_TimeLineDetailState> get copyWith;
}
