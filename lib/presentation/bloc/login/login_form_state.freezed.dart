// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginFormState {
  String get dni => throw _privateConstructorUsedError;
  String? get dniError => throw _privateConstructorUsedError;
  bool get submiting => throw _privateConstructorUsedError;
  bool get submitted => throw _privateConstructorUsedError;
  bool get errorSubmit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginFormStateCopyWith<LoginFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginFormStateCopyWith<$Res> {
  factory $LoginFormStateCopyWith(
          LoginFormState value, $Res Function(LoginFormState) then) =
      _$LoginFormStateCopyWithImpl<$Res, LoginFormState>;
  @useResult
  $Res call(
      {String dni,
      String? dniError,
      bool submiting,
      bool submitted,
      bool errorSubmit});
}

/// @nodoc
class _$LoginFormStateCopyWithImpl<$Res, $Val extends LoginFormState>
    implements $LoginFormStateCopyWith<$Res> {
  _$LoginFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dni = null,
    Object? dniError = freezed,
    Object? submiting = null,
    Object? submitted = null,
    Object? errorSubmit = null,
  }) {
    return _then(_value.copyWith(
      dni: null == dni
          ? _value.dni
          : dni // ignore: cast_nullable_to_non_nullable
              as String,
      dniError: freezed == dniError
          ? _value.dniError
          : dniError // ignore: cast_nullable_to_non_nullable
              as String?,
      submiting: null == submiting
          ? _value.submiting
          : submiting // ignore: cast_nullable_to_non_nullable
              as bool,
      submitted: null == submitted
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as bool,
      errorSubmit: null == errorSubmit
          ? _value.errorSubmit
          : errorSubmit // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginFormStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String dni,
      String? dniError,
      bool submiting,
      bool submitted,
      bool errorSubmit});
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res>
    extends _$LoginFormStateCopyWithImpl<$Res, _$_LoginState>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dni = null,
    Object? dniError = freezed,
    Object? submiting = null,
    Object? submitted = null,
    Object? errorSubmit = null,
  }) {
    return _then(_$_LoginState(
      dni: null == dni
          ? _value.dni
          : dni // ignore: cast_nullable_to_non_nullable
              as String,
      dniError: freezed == dniError
          ? _value.dniError
          : dniError // ignore: cast_nullable_to_non_nullable
              as String?,
      submiting: null == submiting
          ? _value.submiting
          : submiting // ignore: cast_nullable_to_non_nullable
              as bool,
      submitted: null == submitted
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as bool,
      errorSubmit: null == errorSubmit
          ? _value.errorSubmit
          : errorSubmit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoginState extends _LoginState {
  const _$_LoginState(
      {this.dni = '',
      this.dniError = null,
      this.submiting = false,
      this.submitted = false,
      this.errorSubmit = false})
      : super._();

  @override
  @JsonKey()
  final String dni;
  @override
  @JsonKey()
  final String? dniError;
  @override
  @JsonKey()
  final bool submiting;
  @override
  @JsonKey()
  final bool submitted;
  @override
  @JsonKey()
  final bool errorSubmit;

  @override
  String toString() {
    return 'LoginFormState(dni: $dni, dniError: $dniError, submiting: $submiting, submitted: $submitted, errorSubmit: $errorSubmit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            (identical(other.dni, dni) || other.dni == dni) &&
            (identical(other.dniError, dniError) ||
                other.dniError == dniError) &&
            (identical(other.submiting, submiting) ||
                other.submiting == submiting) &&
            (identical(other.submitted, submitted) ||
                other.submitted == submitted) &&
            (identical(other.errorSubmit, errorSubmit) ||
                other.errorSubmit == errorSubmit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, dni, dniError, submiting, submitted, errorSubmit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState extends LoginFormState {
  const factory _LoginState(
      {final String dni,
      final String? dniError,
      final bool submiting,
      final bool submitted,
      final bool errorSubmit}) = _$_LoginState;
  const _LoginState._() : super._();

  @override
  String get dni;
  @override
  String? get dniError;
  @override
  bool get submiting;
  @override
  bool get submitted;
  @override
  bool get errorSubmit;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
