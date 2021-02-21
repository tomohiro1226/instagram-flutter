import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_state.freezed.dart';
part 'account_state.g.dart';

@freezed
abstract class AccountState with _$AccountState {
  factory AccountState({
    @Default(0) int id,
    @Default("######") String username,
    @Default("######") String avatar_image,
  }) = _AccountDetailState;

  factory AccountState.fromJson(Map<String, dynamic> json) =>
      accountStateConverter.fromJson(json);

  static const accountStateConverter = AccountStateConverter();
}

class AccountStateConverter
    implements JsonConverter<AccountState, Map<String, dynamic>> {
  const AccountStateConverter();

  @override
  AccountState fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    // 変換方法を指定 //
    return _AccountDetailState(
      id: json['id'] as int,
      username: json['username'] as String,
      avatar_image: json['avatar_image'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson(AccountState data) => data.toJson();
}
