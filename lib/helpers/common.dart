import 'package:intl/intl.dart';

String createDateToDay(DateTime createDate) {
  final now = new DateTime.now();
  final minuteDiff = now.difference(createDate).inMinutes;
  final hoursDiff = now.difference(createDate).inHours;
  final dayDiff = now.difference(createDate).inDays;

  // 1時間以内
  if (hoursDiff <= 0) {
    return minuteDiff.toString() + '分前';
  }
  // 1時間以上 〜 24時間以内
  else if ((hoursDiff > 0) && (hoursDiff <= 24)) {
    return hoursDiff.toString() + '時間前';
  }
  // 24時間以上 〜 15日以内
  else if ((hoursDiff > 24) && (dayDiff <= 15)) {
    return dayDiff.toString() + '日前';
  }
  // それ以外
  else {
    var format = new DateFormat.yMMMd('ja');
    return format.format(createDate);
  }
}
