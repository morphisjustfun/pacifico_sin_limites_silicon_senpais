// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preference_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserPreferenceModel _$UserPreferenceModelFromJson(Map<String, dynamic> json) =>
    UserPreferenceModel(
      json['dni'] as String,
      json['age'] as int,
      (json['lat'] as num).toDouble(),
      (json['lon'] as num).toDouble(),
      (json['stratum'] as num).toDouble(),
      json['group'] as int,
    );

Map<String, dynamic> _$UserPreferenceModelToJson(
        UserPreferenceModel instance) =>
    <String, dynamic>{
      'dni': instance.dni,
      'age': instance.age,
      'lat': instance.lat,
      'lon': instance.lon,
      'stratum': instance.stratum,
      'group': instance.group,
    };
