import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:pacifico_sin_limites_silicon_senpais/core/mixin/validation_mixin.dart';
import 'package:pacifico_sin_limites_silicon_senpais/data/preference/model/user_preference_model.dart';
import 'package:pacifico_sin_limites_silicon_senpais/data/preference/source/user_preference_source.dart';
import 'package:pacifico_sin_limites_silicon_senpais/presentation/bloc/login/login_form_state.dart';
import 'package:collection/collection.dart';
import 'package:pacifico_sin_limites_silicon_senpais/resources/constants.dart';

@injectable
class LoginFormCubit extends Cubit<LoginFormState> with ValidationMixin {
  final UserPreferencesSource _userPreferencesSource;

  LoginFormCubit(this._userPreferencesSource) : super(const LoginFormState());

  void changeDni(String dni) {
    emit(state.copyWith(dni: dni, dniError: validationDNI(dni)));
  }

  void submit() async {
    emit(state.copyWith(submiting: true));
    await Future.delayed(const Duration(seconds: 1));

    final user =
        Constants.data.firstWhereOrNull((element) => element.dni == state.dni);

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
