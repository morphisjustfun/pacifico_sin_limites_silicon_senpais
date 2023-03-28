import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_form_state.freezed.dart';

@freezed
class LoginFormState with _$LoginFormState {
  const LoginFormState._();

  const factory LoginFormState({
    @Default('') String dni,
    @Default(null) String? dniError,
    @Default(false) bool submiting,
    @Default(false) bool submitted,
    @Default(false) bool errorSubmit,
  }) = _LoginState;

  bool get isValidForm => dni.isNotEmpty && dniError == null;
}
