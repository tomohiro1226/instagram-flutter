import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

import 'package:instagram/models/entities/account/account_state.dart';
import 'package:instagram/models/repository/account_repository.dart';

part 'user_state.freezed.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState({
    @required AccountState myAccount,
  }) = _UserDetailState;
}

class UserStateNotifier extends StateNotifier<UserState> with LocatorMixin {
  AccountRepository get _accountRepository => read<AccountRepository>();

  UserStateNotifier()
      : super(UserState(
          myAccount: AccountState(
              id: 0,
              username: "######",
              avatar_image: "assets/images/logo.png"),
        )) {}

  @override
  void initState() {
    super.initState();

    // アカウント情報を取得する
    fetchAccount();
  }

  Future<void> fetchAccount() async {
    _accountRepository.fetch().then((account) {
      final currentState = state;

      // アカウント情報の更新
      if (currentState is _UserDetailState) {
        state = currentState.copyWith(
          myAccount: AccountState.fromJson(account['account']),
        );
      }
    });
  }
}
