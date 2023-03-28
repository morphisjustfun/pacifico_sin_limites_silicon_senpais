class AppStrings {
  static const general = _General();
  static const splash = _Splash();
  static const auth = _Auth();
  static const validation = _Validation();
}

class _Splash {
  const _Splash();

  final splashTitle = 'Pacifico Sin Limites - Silicon Senpais';
}

class _Auth {
  const _Auth();

  final authTitle = 'Bienvenida Mujer';
  final authTitle2 = 'Power';
}

class _Validation {
  const _Validation();

  final requiredField = '*Campo requerido';
  final passwordValidation = 'La contraseña debe tener mínimo 6 dígitos';
  final dniValidation = 'Ingrese un DNI válido';
  final foreignDocumentValidation = 'Ingrese un carnet de extranjeria válido';
  final passportValidation = 'Ingrese un pasaporte válido';
  final rucValidation = 'Ingrese un RUC válido';
  final emailValidation = 'Ingrese un email válido';
  final formatInvalid = 'Formato inválido';
  final floorNumberValidation = 'Ingrese un número de piso válido';
  final stockInvalid = '*Stock insuficiente';
  final quantityInvalid = '*Cantidad invalida';
  final serviceSelected = '*Servicio seleccionado';
}


class _General {
  const _General();

  final loading = 'Cargando';
  final cancel = 'Cancelar';
  final accept = 'Aceptar';
  final add = 'Agregar';
  final error = 'Error';
  final unavailableApp =
      'Ocurrió un error al intentar iniciar la aplicación.\nIntentelo más tarde.';
  final next = 'Siguiente';
  final proceed = 'Continuar';
  final end = 'Finalizar';
  final connectionErrorTitle = 'Sin conexión';
  final errorOccurred = 'Ha ocurrido un error';
  final info = 'Información';
  final emptyField = '*Campo requerido';
  final nameCartInvalid = 'Ingresa un nombre menor a 6 dígitos';
  final searchEanSku = 'Busca por SKU o EAN';
  final searchYouNeed = 'Busca aquí lo que necesites';
  final areYouSure = '¿Estás seguro?';
  final errorOccurredRetry = 'Ha ocurrido un error, reintentar.';
  final missing = '-';
}
