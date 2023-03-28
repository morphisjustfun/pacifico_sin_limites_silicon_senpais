// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_preference_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserPreferenceModel {
  String get dni => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;
  double get stratum => throw _privateConstructorUsedError;
  int get group => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserPreferenceModelCopyWith<UserPreferenceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPreferenceModelCopyWith<$Res> {
  factory $UserPreferenceModelCopyWith(
          UserPreferenceModel value, $Res Function(UserPreferenceModel) then) =
      _$UserPreferenceModelCopyWithImpl<$Res, UserPreferenceModel>;
  @useResult
  $Res call(
      {String dni, int age, double lat, double lon, double stratum, int group});
}

/// @nodoc
class _$UserPreferenceModelCopyWithImpl<$Res, $Val extends UserPreferenceModel>
    implements $UserPreferenceModelCopyWith<$Res> {
  _$UserPreferenceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dni = null,
    Object? age = null,
    Object? lat = null,
    Object? lon = null,
    Object? stratum = null,
    Object? group = null,
  }) {
    return _then(_value.copyWith(
      dni: null == dni
          ? _value.dni
          : dni // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      stratum: null == stratum
          ? _value.stratum
          : stratum // ignore: cast_nullable_to_non_nullable
              as double,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserPreferenceModelCopyWith<$Res>
    implements $UserPreferenceModelCopyWith<$Res> {
  factory _$$_UserPreferenceModelCopyWith(_$_UserPreferenceModel value,
          $Res Function(_$_UserPreferenceModel) then) =
      __$$_UserPreferenceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String dni, int age, double lat, double lon, double stratum, int group});
}

/// @nodoc
class __$$_UserPreferenceModelCopyWithImpl<$Res>
    extends _$UserPreferenceModelCopyWithImpl<$Res, _$_UserPreferenceModel>
    implements _$$_UserPreferenceModelCopyWith<$Res> {
  __$$_UserPreferenceModelCopyWithImpl(_$_UserPreferenceModel _value,
      $Res Function(_$_UserPreferenceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dni = null,
    Object? age = null,
    Object? lat = null,
    Object? lon = null,
    Object? stratum = null,
    Object? group = null,
  }) {
    return _then(_$_UserPreferenceModel(
      dni: null == dni
          ? _value.dni
          : dni // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      stratum: null == stratum
          ? _value.stratum
          : stratum // ignore: cast_nullable_to_non_nullable
              as double,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UserPreferenceModel implements _UserPreferenceModel {
  const _$_UserPreferenceModel(
      {required this.dni,
      required this.age,
      required this.lat,
      required this.lon,
      required this.stratum,
      required this.group});

  @override
  final String dni;
  @override
  final int age;
  @override
  final double lat;
  @override
  final double lon;
  @override
  final double stratum;
  @override
  final int group;

  @override
  String toString() {
    return 'UserPreferenceModel(dni: $dni, age: $age, lat: $lat, lon: $lon, stratum: $stratum, group: $group)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserPreferenceModel &&
            (identical(other.dni, dni) || other.dni == dni) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.stratum, stratum) || other.stratum == stratum) &&
            (identical(other.group, group) || other.group == group));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, dni, age, lat, lon, stratum, group);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserPreferenceModelCopyWith<_$_UserPreferenceModel> get copyWith =>
      __$$_UserPreferenceModelCopyWithImpl<_$_UserPreferenceModel>(
          this, _$identity);
}

abstract class _UserPreferenceModel implements UserPreferenceModel {
  const factory _UserPreferenceModel(
      {required final String dni,
      required final int age,
      required final double lat,
      required final double lon,
      required final double stratum,
      required final int group}) = _$_UserPreferenceModel;

  @override
  String get dni;
  @override
  int get age;
  @override
  double get lat;
  @override
  double get lon;
  @override
  double get stratum;
  @override
  int get group;
  @override
  @JsonKey(ignore: true)
  _$$_UserPreferenceModelCopyWith<_$_UserPreferenceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
