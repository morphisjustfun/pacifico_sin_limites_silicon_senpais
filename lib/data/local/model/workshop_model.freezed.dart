// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workshop_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WorkshopModel {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get participants => throw _privateConstructorUsedError;
  List<String> get participantsList => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkshopModelCopyWith<WorkshopModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkshopModelCopyWith<$Res> {
  factory $WorkshopModelCopyWith(
          WorkshopModel value, $Res Function(WorkshopModel) then) =
      _$WorkshopModelCopyWithImpl<$Res, WorkshopModel>;
  @useResult
  $Res call(
      {String name,
      String description,
      int participants,
      List<String> participantsList,
      String state});
}

/// @nodoc
class _$WorkshopModelCopyWithImpl<$Res, $Val extends WorkshopModel>
    implements $WorkshopModelCopyWith<$Res> {
  _$WorkshopModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? participants = null,
    Object? participantsList = null,
    Object? state = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as int,
      participantsList: null == participantsList
          ? _value.participantsList
          : participantsList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WorkshopModelCopyWith<$Res>
    implements $WorkshopModelCopyWith<$Res> {
  factory _$$_WorkshopModelCopyWith(
          _$_WorkshopModel value, $Res Function(_$_WorkshopModel) then) =
      __$$_WorkshopModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      int participants,
      List<String> participantsList,
      String state});
}

/// @nodoc
class __$$_WorkshopModelCopyWithImpl<$Res>
    extends _$WorkshopModelCopyWithImpl<$Res, _$_WorkshopModel>
    implements _$$_WorkshopModelCopyWith<$Res> {
  __$$_WorkshopModelCopyWithImpl(
      _$_WorkshopModel _value, $Res Function(_$_WorkshopModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? participants = null,
    Object? participantsList = null,
    Object? state = null,
  }) {
    return _then(_$_WorkshopModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as int,
      participantsList: null == participantsList
          ? _value._participantsList
          : participantsList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WorkshopModel implements _WorkshopModel {
  const _$_WorkshopModel(
      {required this.name,
      required this.description,
      required this.participants,
      required final List<String> participantsList,
      required this.state})
      : _participantsList = participantsList;

  @override
  final String name;
  @override
  final String description;
  @override
  final int participants;
  final List<String> _participantsList;
  @override
  List<String> get participantsList {
    if (_participantsList is EqualUnmodifiableListView)
      return _participantsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participantsList);
  }

  @override
  final String state;

  @override
  String toString() {
    return 'WorkshopModel(name: $name, description: $description, participants: $participants, participantsList: $participantsList, state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkshopModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.participants, participants) ||
                other.participants == participants) &&
            const DeepCollectionEquality()
                .equals(other._participantsList, _participantsList) &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, description, participants,
      const DeepCollectionEquality().hash(_participantsList), state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkshopModelCopyWith<_$_WorkshopModel> get copyWith =>
      __$$_WorkshopModelCopyWithImpl<_$_WorkshopModel>(this, _$identity);
}

abstract class _WorkshopModel implements WorkshopModel {
  const factory _WorkshopModel(
      {required final String name,
      required final String description,
      required final int participants,
      required final List<String> participantsList,
      required final String state}) = _$_WorkshopModel;

  @override
  String get name;
  @override
  String get description;
  @override
  int get participants;
  @override
  List<String> get participantsList;
  @override
  String get state;
  @override
  @JsonKey(ignore: true)
  _$$_WorkshopModelCopyWith<_$_WorkshopModel> get copyWith =>
      throw _privateConstructorUsedError;
}
