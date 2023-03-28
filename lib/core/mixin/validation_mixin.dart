import 'package:pacifico_sin_limites_silicon_senpais/resources/strings.dart';

class ValidationMixin {
  String? validationEmptyField(String value) {
    if (value.trim().isEmpty) {
      return AppStrings.validation.requiredField;
    }
    return null;
  }

  String? validationPhone(String value) {
    if (value.trim().isEmpty) {
      return AppStrings.validation.requiredField;
    }
    if (value.trim().length != 9) {
      return AppStrings.validation.formatInvalid;
    }
    return null;
  }

  String? validationEmail(String value) {
    if (value.trim().isEmpty) {
      return AppStrings.validation.requiredField;
    }
    if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value) ||
        value.contains(RegExp(r'[,;\/]')) ||
        value.contains(' ') ||
        value.contains('...')) {
      return AppStrings.validation.emailValidation;
    }

    var arrobaCount = 0;

    for (var i = 0; i < value.length; i++) {
      if (value[i] == '@') {
        arrobaCount++;
      }
    }

    if (arrobaCount > 1) {
      return AppStrings.validation.emailValidation;
    }

    return null;
  }

  String? validationPassword(String value) {
    if (value.trim().isEmpty) {
      return AppStrings.validation.requiredField;
    }
    if (value.trim().length < 6) {
      return AppStrings.validation.passwordValidation;
    }
    return null;
  }

  String? validationDNI(String value) {
    if (value.trim().length != 8) {
      return AppStrings.validation.dniValidation;
    }
    return null;
  }

  String? validationForeignDocument(String value) {
    if (value.trim().length > 12 || value.trim().length < 9) {
      return AppStrings.validation.foreignDocumentValidation;
    }
    return null;
  }

  String? validationPassport(String value) {
    if (value.trim().length > 12 || value.trim().length < 9) {
      return AppStrings.validation.passportValidation;
    }
    return null;
  }

  String? validationRUC(String value) {
    if (value.trim().length != 11) {
      return AppStrings.validation.rucValidation;
    }
    return null;
  }

  String? validateCartName(String value) {
    if (value.trim().isEmpty) {
      return AppStrings.general.emptyField;
    }
    if (value.trim().length > 6) {
      return AppStrings.general.nameCartInvalid;
    }
    return null;
  }

  String? validationUser(String value) {
    if (value.trim().isEmpty) {
      return AppStrings.general.emptyField;
    }
    return null;
  }

  String? validateQuantityStock(
      String value, int quantity, bool hasAnyAdditionalSelected) {
    if (value.trim().isEmpty) {
      return AppStrings.validation.requiredField;
    }
    if (int.tryParse(value) == null || int.parse(value) <= 0) {
      return AppStrings.validation.quantityInvalid;
    }
    if (int.parse(value) > 1 && hasAnyAdditionalSelected) {
      return AppStrings.validation.serviceSelected;
    }
    if (int.parse(value) > quantity) {
      return AppStrings.validation.stockInvalid;
    }
    return null;
  }


  String? validationFloorNumber(int value) {
    if (value < 0) {
      return AppStrings.validation.floorNumberValidation;
    }
    return null;
  }
}
