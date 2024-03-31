import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@freezed
class ResidentNotification with _$ResidentNotification {
  factory ResidentNotification({
    required String plate,
  }) = _ResidentNotification;

  factory ResidentNotification.fromJson(Map<String, dynamic> json) =>
      _$ResidentNotificationFromJson(json);
}
