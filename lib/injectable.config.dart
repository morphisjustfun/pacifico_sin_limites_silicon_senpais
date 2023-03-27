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
import 'package:pacifico_sin_limites_silicon_senpais/core/module/router_module.dart'
    as _i5;
import 'package:pacifico_sin_limites_silicon_senpais/core/navigation/route.dart'
    as _i4;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final routeModule = _$RouteModule();
    gh.lazySingleton<_i3.FluroRouter>(() => routeModule.fluroRouter);
    gh.factory<_i4.Routes>(() => _i4.Routes(gh<_i3.FluroRouter>()));
    return this;
  }
}

class _$RouteModule extends _i5.RouteModule {}
