import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:pacifico_sin_limites_silicon_senpais/core/mixin/validation_mixin.dart';
import 'package:pacifico_sin_limites_silicon_senpais/data/preference/model/user_preference_model.dart';
import 'package:pacifico_sin_limites_silicon_senpais/presentation/bloc/login/login_form_state.dart';

@injectable
class LoginFormCubit extends Cubit<LoginFormState> with ValidationMixin {
  LoginFormCubit() : super(const LoginFormState());

  void changeDni(String dni) {
    emit(state.copyWith(dni: dni, dniError: validationDNI(dni)));
  }

  void submit() async {
    emit(state.copyWith(submiting: true));
    const data = [
      UserPreferenceModel(
          dni: "10201959",
          age: 36,
          lat: -12.0326633173,
          lon: -76.8773255404,
          stratum: 0.9,
          group: 0),
      UserPreferenceModel(
          dni: "10538536",
          age: 32,
          lat: -12.1600011814,
          lon: -76.8098704964,
          stratum: 1.3,
          group: 1),
      UserPreferenceModel(
          dni: "10214229",
          age: 50,
          lat: -12.0591441086,
          lon: -77.0506366491,
          stratum: 1.1,
          group: 2),
      UserPreferenceModel(
          dni: "10383942",
          age: 48,
          lat: -11.9927659685,
          lon: -77.0885044371,
          stratum: 0.6,
          group: 3),
      UserPreferenceModel(
          dni: "10228937",
          age: 52,
          lat: -12.0401247629,
          lon: -76.9875419285,
          stratum: 0.5,
          group: 3),
      UserPreferenceModel(
          dni: "10324297",
          age: 28,
          lat: -12.1703036671,
          lon: -76.9189970296,
          stratum: 0.6,
          group: 4),
      UserPreferenceModel(
          dni: "10112179",
          age: 32,
          lat: -11.9725186497,
          lon: -77.0743776898,
          stratum: 0.7,
          group: 5),
      UserPreferenceModel(
          dni: "10232366",
          age: 59,
          lat: -12.0750804611,
          lon: -77.0657891347,
          stratum: 1.4,
          group: 6),
      UserPreferenceModel(
          dni: "10211854",
          age: 56,
          lat: -12.0591441086,
          lon: -77.0506366491,
          stratum: 1.1,
          group: 6),
      UserPreferenceModel(
          dni: "10509501",
          age: 56,
          lat: -11.9290998645,
          lon: -77.0389161298,
          stratum: 0.5,
          group: 7),
      UserPreferenceModel(
          dni: "10423687",
          age: 52,
          lat: -12.2191748891,
          lon: -76.9454413141,
          stratum: 0.7,
          group: 2),
      UserPreferenceModel(
          dni: "10000780",
          age: 41,
          lat: -12.0975356033,
          lon: -76.9952627269,
          stratum: 2.9,
          group: 8),
      UserPreferenceModel(
          dni: "10038593",
          age: 38,
          lat: -12.0765987497,
          lon: -77.0900896423,
          stratum: 1.5,
          group: 1),
      UserPreferenceModel(
          dni: "10570429",
          age: 36,
          lat: -12.0432355795,
          lon: -76.9632530075,
          stratum: 0.7,
          group: 0),
      UserPreferenceModel(
          dni: "10177531",
          age: 48,
          lat: -12.0879993406,
          lon: -76.9258984551,
          stratum: 3.3,
          group: 9),
      UserPreferenceModel(
          dni: "10454309",
          age: 41,
          lat: -12.0723184628,
          lon: -77.0173714881,
          stratum: 1.5,
          group: 5),
      UserPreferenceModel(
          dni: "10501931",
          age: 54,
          lat: -11.9290998645,
          lon: -77.0389161298,
          stratum: 0.5,
          group: 7),
      UserPreferenceModel(
          dni: "10143901",
          age: 38,
          lat: -12.1272261836,
          lon: -76.9845188056,
          stratum: 2.4,
          group: 8),
      UserPreferenceModel(
          dni: "10230450",
          age: 53,
          lat: -16.8357920768,
          lon: -69.8551974581,
          stratum: 0.8,
          group: 9),
      UserPreferenceModel(
          dni: "10260647",
          age: 31,
          lat: -11.9459474278,
          lon: -76.9714642367,
          stratum: 0.5,
          group: 4),
    ];
    await Future.delayed(const Duration(seconds: 2));
    emit(state.copyWith(submiting: false, submitted: true));
  }
}
