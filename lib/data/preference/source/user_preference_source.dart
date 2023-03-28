import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:pacifico_sin_limites_silicon_senpais/data/preference/model/user_preference_model.dart';
import 'package:pacifico_sin_limites_silicon_senpais/resources/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class UserPreferencesSource {
  Future<UserPreferenceModel?> getUser();

  Future<bool> saveUser(UserPreferenceModel user);

  Future<bool> delete();
}

@Injectable(as: UserPreferencesSource)
class UserPreferenceImpl implements UserPreferencesSource {
  final SharedPreferences _client;

  UserPreferenceImpl(this._client);

  @override
  Future<UserPreferenceModel?> getUser() async {
    final response = _client.getString(Constants.userPreferenceKey);
    return response != null
        ? UserPreferenceModel.fromJson(json.decode(response))
        : null;
  }

  @override
  Future<bool> saveUser(UserPreferenceModel user) {
    return _client.setString(Constants.userPreferenceKey, jsonEncode(user));
  }

  @override
  Future<bool> delete() {
    return _client.remove(Constants.userPreferenceKey);
  }
}
