import 'package:pacifico_sin_limites_silicon_senpais/data/local/model/workshop_model.dart';
import 'package:pacifico_sin_limites_silicon_senpais/data/preference/model/user_preference_model.dart';

class Constants {
  static const String userPreferenceKey = 'user';
  static const String workshopComplete = "COMPLETE";
  static const String workshopIncomplete = "INCOMPLETE";
  static List<UserPreferenceModel> data = [
    UserPreferenceModel(
        "Noemi", "10383942", 48, -11.9927659685, -77.0885044371, 0.6, 3),
    UserPreferenceModel(
        "Valeria", "10201959", 36, -12.0326633173, -76.8773255404, 0.9, 0),
    UserPreferenceModel(
        "Ximena", "10538536", 32, -12.1600011814, -76.8098704964, 1.3, 1),
    UserPreferenceModel(
        "Lucia", "10214229", 50, -12.0591441086, -77.0506366491, 1.1, 2),
    UserPreferenceModel(
        "Sofia", "10228937", 52, -12.0401247629, -76.9875419285, 0.5, 3),
    UserPreferenceModel(
        "Martina", "10324297", 28, -12.1703036671, -76.9189970296, 0.6, 4),
    UserPreferenceModel(
        "Lucero", "10112179", 32, -11.9725186497, -77.0743776898, 0.7, 5),
    UserPreferenceModel(
        "Esther", "10232366", 59, -12.0750804611, -77.0657891347, 1.4, 6),
    UserPreferenceModel(
        "Abigail", "10211854", 56, -12.0591441086, -77.0506366491, 1.1, 6),
    UserPreferenceModel(
        "Paula", "10509501", 56, -11.9290998645, -77.0389161298, 0.5, 7),
    UserPreferenceModel(
        "Casandra", "10423687", 52, -12.2191748891, -76.9454413141, 0.7, 2),
    UserPreferenceModel(
        "Cristina", "10000780", 41, -12.0975356033, -76.9952627269, 2.9, 8),
    UserPreferenceModel(
        "Emma", "10038593", 38, -12.0765987497, -77.0900896423, 1.5, 1),
    UserPreferenceModel(
        "Vilma", "10570429", 36, -12.0432355795, -76.9632530075, 0.7, 0),
    UserPreferenceModel(
        "Alejandra", "10177531", 48, -12.0879993406, -76.9258984551, 3.3, 9),
    UserPreferenceModel(
        "Anahis", "10454309", 41, -12.0723184628, -77.0173714881, 1.5, 5),
    UserPreferenceModel(
        "Claudia", "10501931", 54, -11.9290998645, -77.0389161298, 0.5, 7),
    UserPreferenceModel(
        "Isabel", "10143901", 38, -12.1272261836, -76.9845188056, 2.4, 8),
    UserPreferenceModel(
        "Yvonne", "10230450", 53, -16.8357920768, -69.8551974581, 0.8, 9),
    UserPreferenceModel(
        "Diana", "10260647", 31, -11.9459474278, -76.9714642367, 0.5, 4),
  ];

  // class Workshop with _$Workshop {
  // const factory Workshop({
  // required String name,
  // required String description,
  // required int participants,
  // required List<String> participantsList,
  // required String state,
  // }) = _Workshop;
  // }

// create mock workshops with state workshopComplete in which there are couples of any number of participants. Many couples. Use DNI in participants list
// example
  static const List<WorkshopModel> workshops = [
    WorkshopModel(
        name: "Beneficio de los seguros contra incendios",
        description:
            "Aprende a proteger tu hogar y tu familia a través de los seguros contra incendios",
        participants: 10,
        participantsList: [
          '10501931',
          '10143901',
          '10232366',
          '10211854',
          '10324297',
          '10260647',
          '10201959',
          '10570429'
        ],
        state: workshopIncomplete),
    // now with Beneficio de los seguros contra sismos with differente partiicpants list
    WorkshopModel(
        name: "Beneficio de los seguros contra sismos",
        description:
            "Aprende a proteger tu hogar y tu familia a través de los seguros contra sismos",
        participants: 16,
        participantsList: [
          '10538536',
          '10038593',
          '10201959',
          '10570429',
          '10143901',
          '10324297',
          '10260647',
          '10383942',
          '10228937',
          '10177531',
          '10230450',
          '10232366',
          '10211854'
        ],
        state: workshopIncomplete),
    WorkshopModel(
        name: "Beneficio de los seguros contra inundaciones",
        description:
            "Aprende a proteger tu hogar y tu familia a través de los seguros contra inundaciones",
        participants: 20,
        participantsList: [
          '10383942',
          '10228937',
          '10214229',
          '10423687',
          '10232366',
          '10211854',
          '10324297',
          '10260647',
          '10000780',
          '10143901',
          '10538536',
          '10038593',
          '10112179',
          '10454309',
          '10201959',
          '10570429',
          '10509501',
          '10501931',
          '10177531',
          '10230450'
        ],
        state: workshopComplete),
    WorkshopModel(
        name: "Beneficio de los seguros contra aluviones",
        description:
            "Aprende a proteger tu hogar y tu familia a través de los seguros contra aluviones",
        participants: 8,
        participantsList: [
          '10201959',
          '10570429',
          '10423687',
          '10509501',
          '10501931',
          '10112179',
          '10454309'
        ],
        state: workshopIncomplete),
  ];
}
