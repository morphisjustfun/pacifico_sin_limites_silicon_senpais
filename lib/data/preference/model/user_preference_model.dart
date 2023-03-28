import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_preference_model.freezed.dart';

@freezed
class UserPreferenceModel with _$UserPreferenceModel {
  const factory UserPreferenceModel({
    required String dni,
    required int age,
    required double lat,
    required double lon,
    required double stratum,
    required int group,
  }) = _UserPreferenceModel;
}