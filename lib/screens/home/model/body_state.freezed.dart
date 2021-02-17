// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'body_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BodyStateTearOff {
  const _$BodyStateTearOff();

// ignore: unused_element
  _BodyDetailState call(
      {List<StoryState> stories = const <StoryState>[],
      List<TimeLineState> timeLines = const <TimeLineState>[]}) {
    return _BodyDetailState(
      stories: stories,
      timeLines: timeLines,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BodyState = _$BodyStateTearOff();

/// @nodoc
mixin _$BodyState {
  List<StoryState> get stories;
  List<TimeLineState> get timeLines;

  @JsonKey(ignore: true)
  $BodyStateCopyWith<BodyState> get copyWith;
}

/// @nodoc
abstract class $BodyStateCopyWith<$Res> {
  factory $BodyStateCopyWith(BodyState value, $Res Function(BodyState) then) =
      _$BodyStateCopyWithImpl<$Res>;
  $Res call({List<StoryState> stories, List<TimeLineState> timeLines});
}

/// @nodoc
class _$BodyStateCopyWithImpl<$Res> implements $BodyStateCopyWith<$Res> {
  _$BodyStateCopyWithImpl(this._value, this._then);

  final BodyState _value;
  // ignore: unused_field
  final $Res Function(BodyState) _then;

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
abstract class _$BodyDetailStateCopyWith<$Res>
    implements $BodyStateCopyWith<$Res> {
  factory _$BodyDetailStateCopyWith(
          _BodyDetailState value, $Res Function(_BodyDetailState) then) =
      __$BodyDetailStateCopyWithImpl<$Res>;
  @override
  $Res call({List<StoryState> stories, List<TimeLineState> timeLines});
}

/// @nodoc
class __$BodyDetailStateCopyWithImpl<$Res> extends _$BodyStateCopyWithImpl<$Res>
    implements _$BodyDetailStateCopyWith<$Res> {
  __$BodyDetailStateCopyWithImpl(
      _BodyDetailState _value, $Res Function(_BodyDetailState) _then)
      : super(_value, (v) => _then(v as _BodyDetailState));

  @override
  _BodyDetailState get _value => super._value as _BodyDetailState;

  @override
  $Res call({
    Object stories = freezed,
    Object timeLines = freezed,
  }) {
    return _then(_BodyDetailState(
      stories:
          stories == freezed ? _value.stories : stories as List<StoryState>,
      timeLines: timeLines == freezed
          ? _value.timeLines
          : timeLines as List<TimeLineState>,
    ));
  }
}

/// @nodoc
class _$_BodyDetailState
    with DiagnosticableTreeMixin
    implements _BodyDetailState {
  const _$_BodyDetailState(
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BodyState(stories: $stories, timeLines: $timeLines)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BodyState'))
      ..add(DiagnosticsProperty('stories', stories))
      ..add(DiagnosticsProperty('timeLines', timeLines));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BodyDetailState &&
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
  _$BodyDetailStateCopyWith<_BodyDetailState> get copyWith =>
      __$BodyDetailStateCopyWithImpl<_BodyDetailState>(this, _$identity);
}

abstract class _BodyDetailState implements BodyState {
  const factory _BodyDetailState(
      {List<StoryState> stories,
      List<TimeLineState> timeLines}) = _$_BodyDetailState;

  @override
  List<StoryState> get stories;
  @override
  List<TimeLineState> get timeLines;
  @override
  @JsonKey(ignore: true)
  _$BodyDetailStateCopyWith<_BodyDetailState> get copyWith;
}
