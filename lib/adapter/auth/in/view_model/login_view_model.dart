import 'package:get/get.dart';
import 'package:hexagonal_test/main.dart';

import 'package:hexagonal_test/application/auth/port/in/login_use_case.dart';

class LoginViewModel extends GetxController{
  final LoginUseCase loginUseCase = injector<LoginUseCase>();

  String id = '';
  String password = '';

  loginButtonClick() async {
    loginUseCase.login(id, password);
    return true;
  }
}