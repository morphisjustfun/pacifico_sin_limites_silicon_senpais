import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:pacifico_sin_limites_silicon_senpais/core/mixin/validation_mixin.dart';
import 'package:pacifico_sin_limites_silicon_senpais/data/preference/model/user_preference_model.dart';
import 'package:pacifico_sin_limites_silicon_senpais/data/preference/source/user_preference_source.dart';
import 'package:pacifico_sin_limites_silicon_senpais/presentation/bloc/login/login_form_state.dart';
import 'package:collection/collection.dart';

@injectable
class LoginFormCubit extends Cubit<LoginFormState> with ValidationMixin {
  UserPreferencesSource _userPreferencesSource;

  LoginFormCubit(this._userPreferencesSource) : super(const LoginFormState());

  void changeDni(String dni) {
    emit(state.copyWith(dni: dni, dniError: validationDNI(dni)));
  }

  void submit() async {
    emit(state.copyWith(submiting: true));
    final data = [
      UserPreferenceModel(
          "10201959", 36, -12.0326633173, -76.8773255404, 0.9, 0),
      UserPreferenceModel(
          "10538536", 32, -12.1600011814, -76.8098704964, 1.3, 1),
      UserPreferenceModel(
          "10214229", 50, -12.0591441086, -77.0506366491, 1.1, 2),
      UserPreferenceModel(
          "10383942", 48, -11.9927659685, -77.0885044371, 0.6, 3),
      UserPreferenceModel(
          "10228937", 52, -12.0401247629, -76.9875419285, 0.5, 3),
      UserPreferenceModel(
          "10324297", 28, -12.1703036671, -76.9189970296, 0.6, 4),
      UserPreferenceModel(
          "10112179", 32, -11.9725186497, -77.0743776898, 0.7, 5),
      UserPreferenceModel(
          "10232366", 59, -12.0750804611, -77.0657891347, 1.4, 6),
      UserPreferenceModel(
          "10211854", 56, -12.0591441086, -77.0506366491, 1.1, 6),
      UserPreferenceModel(
          "10509501", 56, -11.9290998645, -77.0389161298, 0.5, 7),
      UserPreferenceModel(
          "10423687", 52, -12.2191748891, -76.9454413141, 0.7, 2),
      UserPreferenceModel(
          "10000780", 41, -12.0975356033, -76.9952627269, 2.9, 8),
      UserPreferenceModel(
          "10038593", 38, -12.0765987497, -77.0900896423, 1.5, 1),
      UserPreferenceModel(
          "10570429", 36, -12.0432355795, -76.9632530075, 0.7, 0),
      UserPreferenceModel(
          "10177531", 48, -12.0879993406, -76.9258984551, 3.3, 9),
      UserPreferenceModel(
          "10454309", 41, -12.0723184628, -77.0173714881, 1.5, 5),
      UserPreferenceModel(
          "10501931", 54, -11.9290998645, -77.0389161298, 0.5, 7),
      UserPreferenceModel(
          "10143901", 38, -12.1272261836, -76.9845188056, 2.4, 8),
      UserPreferenceModel(
          "10230450", 53, -16.8357920768, -69.8551974581, 0.8, 9),
      UserPreferenceModel(
          "10260647", 31, -11.9459474278, -76.9714642367, 0.5, 4),
    ];
    await Future.delayed(const Duration(seconds: 2));

    final user = data.firstWhereOrNull((element) => element.dni == state.dni);

    if (user == null) {
      emit(state.copyWith(
          submiting: false, submitted: false, errorSubmit: true));
      emit(state.copyWith(errorSubmit: false));
      return;
    }
    _userPreferencesSource.saveUser(user);

    emit(state.copyWith(submiting: false, submitted: true, errorSubmit: false));
  }
}
