// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:fluro/fluro.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:pacifico_sin_limites_silicon_senpais/core/module/app_module.dart'
    as _i9;
import 'package:pacifico_sin_limites_silicon_senpais/core/module/router_module.dart'
    as _i8;
import 'package:pacifico_sin_limites_silicon_senpais/core/navigation/route.dart'
    as _i4;
import 'package:pacifico_sin_limites_silicon_senpais/data/preference/source/user_preference_source.dart'
    as _i6;
import 'package:pacifico_sin_limites_silicon_senpais/presentation/bloc/login/login_form_cubit.dart'
    as _i7;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final routeModule = _$RouteModule();
    final appModule = _$AppModule();
    gh.lazySingleton<_i3.FluroRouter>(() => routeModule.fluroRouter);
    gh.factory<_i4.Routes>(() => _i4.Routes(gh<_i3.FluroRouter>()));
    await gh.factoryAsync<_i5.SharedPreferences>(
      () => appModule.sharePreferences,
      preResolve: true,
    );
    gh.factory<_i6.UserPreferencesSource>(
        () => _i6.UserPreferenceImpl(gh<_i5.SharedPreferences>()));
    gh.factory<_i7.LoginFormCubit>(
        () => _i7.LoginFormCubit(gh<_i6.UserPreferencesSource>()));
    return this;
  }
}

class _$RouteModule extends _i8.RouteModule {}

class _$AppModule extends _i9.AppModule {}
