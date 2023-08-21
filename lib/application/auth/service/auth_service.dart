import 'package:hexagonal_test/application/auth/port/in/login_use_case.dart';
import 'package:hexagonal_test/application/auth/port/out/login_interface.dart';

class AuthService with LoginUseCase {
  final LoginInterface loginInterface;

  AuthService(this.loginInterface);

  @override
  Future login(String id, String password){
    return loginInterface.login(id, password);
  }
}