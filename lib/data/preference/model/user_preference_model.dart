import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_preference_model.g.dart';

@JsonSerializable(explicitToJson: true)
class UserPreferenceModel {
  final String dni;
  final int age;
  final double lat;
  final double lon;
  final double stratum;
  final int group;

  UserPreferenceModel(
      this.dni, this.age, this.lat, this.lon, this.stratum, this.group);

  factory UserPreferenceModel.fromJson(Map<String, dynamic> json) =>
      _$UserPreferenceModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserPreferenceModelToJson(this);
}
