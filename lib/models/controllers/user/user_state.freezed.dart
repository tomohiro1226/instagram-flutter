// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

// ignore: unused_element
  _UserDetailState call({@required AccountState myAccount}) {
    return _UserDetailState(
      myAccount: myAccount,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState {
  AccountState get myAccount;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
  $Res call({AccountState myAccount});

  $AccountStateCopyWith<$Res> get myAccount;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;

  @override
  $Res call({
    Object myAccount = freezed,
  }) {
    return _then(_value.copyWith(
      myAccount:
          myAccount == freezed ? _value.myAccount : myAccount as AccountState,
    ));
  }

  @override
  $AccountStateCopyWith<$Res> get myAccount {
    if (_value.myAccount == null) {
      return null;
    }
    return $AccountStateCopyWith<$Res>(_value.myAccount, (value) {
      return _then(_value.copyWith(myAccount: value));
    });
  }
}

/// @nodoc
abstract class _$UserDetailStateCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$UserDetailStateCopyWith(
          _UserDetailState value, $Res Function(_UserDetailState) then) =
      __$UserDetailStateCopyWithImpl<$Res>;
  @override
  $Res call({AccountState myAccount});

  @override
  $AccountStateCopyWith<$Res> get myAccount;
}

/// @nodoc
class __$UserDetailStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$UserDetailStateCopyWith<$Res> {
  __$UserDetailStateCopyWithImpl(
      _UserDetailState _value, $Res Function(_UserDetailState) _then)
      : super(_value, (v) => _then(v as _UserDetailState));

  @override
  _UserDetailState get _value => super._value as _UserDetailState;

  @override
  $Res call({
    Object myAccount = freezed,
  }) {
    return _then(_UserDetailState(
      myAccount:
          myAccount == freezed ? _value.myAccount : myAccount as AccountState,
    ));
  }
}

/// @nodoc
class _$_UserDetailState
    with DiagnosticableTreeMixin
    implements _UserDetailState {
  const _$_UserDetailState({@required this.myAccount})
      : assert(myAccount != null);

  @override
  final AccountState myAccount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserState(myAccount: $myAccount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserState'))
      ..add(DiagnosticsProperty('myAccount', myAccount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDetailState &&
            (identical(other.myAccount, myAccount) ||
                const DeepCollectionEquality()
                    .equals(other.myAccount, myAccount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(myAccount);

  @JsonKey(ignore: true)
  @override
  _$UserDetailStateCopyWith<_UserDetailState> get copyWith =>
      __$UserDetailStateCopyWithImpl<_UserDetailState>(this, _$identity);
}

abstract class _UserDetailState implements UserState {
  const factory _UserDetailState({@required AccountState myAccount}) =
      _$_UserDetailState;

  @override
  AccountState get myAccount;
  @override
  @JsonKey(ignore: true)
  _$UserDetailStateCopyWith<_UserDetailState> get copyWith;
}
