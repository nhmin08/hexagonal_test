import 'package:hexagonal_test/domain/auth/login_model.dart';

abstract class LoginInterface{
  Future<AccessToken> login(String id, String password);
}

class LoginError with Exception{}