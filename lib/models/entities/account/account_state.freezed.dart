// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'account_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AccountState _$AccountStateFromJson(Map<String, dynamic> json) {
  return _AccountDetailState.fromJson(json);
}

/// @nodoc
class _$AccountStateTearOff {
  const _$AccountStateTearOff();

// ignore: unused_element
  _AccountDetailState call(
      {int id = 0,
      String username = "######",
      String avatar_image = "######"}) {
    return _AccountDetailState(
      id: id,
      username: username,
      avatar_image: avatar_image,
    );
  }

// ignore: unused_element
  AccountState fromJson(Map<String, Object> json) {
    return AccountState.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AccountState = _$AccountStateTearOff();

/// @nodoc
mixin _$AccountState {
  int get id;
  String get username;
  String get avatar_image;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $AccountStateCopyWith<AccountState> get copyWith;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res>;
  $Res call({int id, String username, String avatar_image});
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res> implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  final AccountState _value;
  // ignore: unused_field
  final $Res Function(AccountState) _then;

  @override
  $Res call({
    Object id = freezed,
    Object username = freezed,
    Object avatar_image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      username: username == freezed ? _value.username : username as String,
      avatar_image: avatar_image == freezed
          ? _value.avatar_image
          : avatar_image as String,
    ));
  }
}

/// @nodoc
abstract class _$AccountDetailStateCopyWith<$Res>
    implements $AccountStateCopyWith<$Res> {
  factory _$AccountDetailStateCopyWith(
          _AccountDetailState value, $Res Function(_AccountDetailState) then) =
      __$AccountDetailStateCopyWithImpl<$Res>;
  @override
  $Res call({int id, String username, String avatar_image});
}

/// @nodoc
class __$AccountDetailStateCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res>
    implements _$AccountDetailStateCopyWith<$Res> {
  __$AccountDetailStateCopyWithImpl(
      _AccountDetailState _value, $Res Function(_AccountDetailState) _then)
      : super(_value, (v) => _then(v as _AccountDetailState));

  @override
  _AccountDetailState get _value => super._value as _AccountDetailState;

  @override
  $Res call({
    Object id = freezed,
    Object username = freezed,
    Object avatar_image = freezed,
  }) {
    return _then(_AccountDetailState(
      id: id == freezed ? _value.id : id as int,
      username: username == freezed ? _value.username : username as String,
      avatar_image: avatar_image == freezed
          ? _value.avatar_image
          : avatar_image as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AccountDetailState
    with DiagnosticableTreeMixin
    implements _AccountDetailState {
  _$_AccountDetailState(
      {this.id = 0, this.username = "######", this.avatar_image = "######"})
      : assert(id != null),
        assert(username != null),
        assert(avatar_image != null);

  factory _$_AccountDetailState.fromJson(Map<String, dynamic> json) =>
      _$_$_AccountDetailStateFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int id;
  @JsonKey(defaultValue: "######")
  @override
  final String username;
  @JsonKey(defaultValue: "######")
  @override
  final String avatar_image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountState(id: $id, username: $username, avatar_image: $avatar_image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountState'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('avatar_image', avatar_image));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountDetailState &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.avatar_image, avatar_image) ||
                const DeepCollectionEquality()
                    .equals(other.avatar_image, avatar_image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(avatar_image);

  @JsonKey(ignore: true)
  @override
  _$AccountDetailStateCopyWith<_AccountDetailState> get copyWith =>
      __$AccountDetailStateCopyWithImpl<_AccountDetailState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AccountDetailStateToJson(this);
  }
}

abstract class _AccountDetailState implements AccountState {
  factory _AccountDetailState({int id, String username, String avatar_image}) =
      _$_AccountDetailState;

  factory _AccountDetailState.fromJson(Map<String, dynamic> json) =
      _$_AccountDetailState.fromJson;

  @override
  int get id;
  @override
  String get username;
  @override
  String get avatar_image;
  @override
  @JsonKey(ignore: true)
  _$AccountDetailStateCopyWith<_AccountDetailState> get copyWith;
}
