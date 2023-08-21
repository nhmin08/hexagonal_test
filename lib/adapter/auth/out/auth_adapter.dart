
import 'package:hexagonal_test/application/auth/port/out/login_interface.dart';

import 'package:hexagonal_test/constants/constants.dart' as constants;

import 'package:hexagonal_test/domain/auth/login_model.dart';

import 'package:hexagonal_test/utils/api.dart';
import 'package:injectable/injectable.dart';

@singleton
class AuthAdapter with LoginInterface{
  Api api = Api();

  @override
  Future<AccessToken> login(String id, String password) async {
    Map<String, dynamic> data = {
      "userName": id,
      "password": password,
    };

    dynamic loginData = await api.requestApi(
        HttpMethodType.post, constants.baseUrl, constants.login,
        data: data, formJson: AccessToken.fromJson);

    return loginData;
  }
}