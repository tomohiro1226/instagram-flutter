// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'storyPage_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$StoryPageStateTearOff {
  const _$StoryPageStateTearOff();

// ignore: unused_element
  _StoryPageDetailState call({Stage stage = Stage.idel}) {
    return _StoryPageDetailState(
      stage: stage,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $StoryPageState = _$StoryPageStateTearOff();

/// @nodoc
mixin _$StoryPageState {
  Stage get stage;

  @JsonKey(ignore: true)
  $StoryPageStateCopyWith<StoryPageState> get copyWith;
}

/// @nodoc
abstract class $StoryPageStateCopyWith<$Res> {
  factory $StoryPageStateCopyWith(
          StoryPageState value, $Res Function(StoryPageState) then) =
      _$StoryPageStateCopyWithImpl<$Res>;
  $Res call({Stage stage});
}

/// @nodoc
class _$StoryPageStateCopyWithImpl<$Res>
    implements $StoryPageStateCopyWith<$Res> {
  _$StoryPageStateCopyWithImpl(this._value, this._then);

  final StoryPageState _value;
  // ignore: unused_field
  final $Res Function(StoryPageState) _then;

  @override
  $Res call({
    Object stage = freezed,
  }) {
    return _then(_value.copyWith(
      stage: stage == freezed ? _value.stage : stage as Stage,
    ));
  }
}

/// @nodoc
abstract class _$StoryPageDetailStateCopyWith<$Res>
    implements $StoryPageStateCopyWith<$Res> {
  factory _$StoryPageDetailStateCopyWith(_StoryPageDetailState value,
          $Res Function(_StoryPageDetailState) then) =
      __$StoryPageDetailStateCopyWithImpl<$Res>;
  @override
  $Res call({Stage stage});
}

/// @nodoc
class __$StoryPageDetailStateCopyWithImpl<$Res>
    extends _$StoryPageStateCopyWithImpl<$Res>
    implements _$StoryPageDetailStateCopyWith<$Res> {
  __$StoryPageDetailStateCopyWithImpl(
      _StoryPageDetailState _value, $Res Function(_StoryPageDetailState) _then)
      : super(_value, (v) => _then(v as _StoryPageDetailState));

  @override
  _StoryPageDetailState get _value => super._value as _StoryPageDetailState;

  @override
  $Res call({
    Object stage = freezed,
  }) {
    return _then(_StoryPageDetailState(
      stage: stage == freezed ? _value.stage : stage as Stage,
    ));
  }
}

/// @nodoc
class _$_StoryPageDetailState
    with DiagnosticableTreeMixin
    implements _StoryPageDetailState {
  const _$_StoryPageDetailState({this.stage = Stage.idel})
      : assert(stage != null);

  @JsonKey(defaultValue: Stage.idel)
  @override
  final Stage stage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StoryPageState(stage: $stage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StoryPageState'))
      ..add(DiagnosticsProperty('stage', stage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StoryPageDetailState &&
            (identical(other.stage, stage) ||
                const DeepCollectionEquality().equals(other.stage, stage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(stage);

  @JsonKey(ignore: true)
  @override
  _$StoryPageDetailStateCopyWith<_StoryPageDetailState> get copyWith =>
      __$StoryPageDetailStateCopyWithImpl<_StoryPageDetailState>(
          this, _$identity);
}

abstract class _StoryPageDetailState implements StoryPageState {
  const factory _StoryPageDetailState({Stage stage}) = _$_StoryPageDetailState;

  @override
  Stage get stage;
  @override
  @JsonKey(ignore: true)
  _$StoryPageDetailStateCopyWith<_StoryPageDetailState> get copyWith;
}
