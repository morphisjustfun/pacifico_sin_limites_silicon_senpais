import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:pacifico_sin_limites_silicon_senpais/injectable.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void setup() => getIt.init();
