// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

// ignore: unused_element
  _HomeDetailState call(
      {List<StoryState> stories = const <StoryState>[],
      List<TimeLineState> timeLines = const <TimeLineState>[]}) {
    return _HomeDetailState(
      stories: stories,
      timeLines: timeLines,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  List<StoryState> get stories;
  List<TimeLineState> get timeLines;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call({List<StoryState> stories, List<TimeLineState> timeLines});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object stories = freezed,
    Object timeLines = freezed,
  }) {
    return _then(_value.copyWith(
      stories:
          stories == freezed ? _value.stories : stories as List<StoryState>,
      timeLines: timeLines == freezed
          ? _value.timeLines
          : timeLines as List<TimeLineState>,
    ));
  }
}

/// @nodoc
abstract class _$HomeDetailStateCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$HomeDetailStateCopyWith(
          _HomeDetailState value, $Res Function(_HomeDetailState) then) =
      __$HomeDetailStateCopyWithImpl<$Res>;
  @override
  $Res call({List<StoryState> stories, List<TimeLineState> timeLines});
}

/// @nodoc
class __$HomeDetailStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeDetailStateCopyWith<$Res> {
  __$HomeDetailStateCopyWithImpl(
      _HomeDetailState _value, $Res Function(_HomeDetailState) _then)
      : super(_value, (v) => _then(v as _HomeDetailState));

  @override
  _HomeDetailState get _value => super._value as _HomeDetailState;

  @override
  $Res call({
    Object stories = freezed,
    Object timeLines = freezed,
  }) {
    return _then(_HomeDetailState(
      stories:
          stories == freezed ? _value.stories : stories as List<StoryState>,
      timeLines: timeLines == freezed
          ? _value.timeLines
          : timeLines as List<TimeLineState>,
    ));
  }
}

/// @nodoc
class _$_HomeDetailState implements _HomeDetailState {
  const _$_HomeDetailState(
      {this.stories = const <StoryState>[],
      this.timeLines = const <TimeLineState>[]})
      : assert(stories != null),
        assert(timeLines != null);

  @JsonKey(defaultValue: const <StoryState>[])
  @override
  final List<StoryState> stories;
  @JsonKey(defaultValue: const <TimeLineState>[])
  @override
  final List<TimeLineState> timeLines;

  @override
  String toString() {
    return 'HomeState(stories: $stories, timeLines: $timeLines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeDetailState &&
            (identical(other.stories, stories) ||
                const DeepCollectionEquality()
                    .equals(other.stories, stories)) &&
            (identical(other.timeLines, timeLines) ||
                const DeepCollectionEquality()
                    .equals(other.timeLines, timeLines)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(stories) ^
      const DeepCollectionEquality().hash(timeLines);

  @JsonKey(ignore: true)
  @override
  _$HomeDetailStateCopyWith<_HomeDetailState> get copyWith =>
      __$HomeDetailStateCopyWithImpl<_HomeDetailState>(this, _$identity);
}

abstract class _HomeDetailState implements HomeState {
  const factory _HomeDetailState(
      {List<StoryState> stories,
      List<TimeLineState> timeLines}) = _$_HomeDetailState;

  @override
  List<StoryState> get stories;
  @override
  List<TimeLineState> get timeLines;
  @override
  @JsonKey(ignore: true)
  _$HomeDetailStateCopyWith<_HomeDetailState> get copyWith;
}
