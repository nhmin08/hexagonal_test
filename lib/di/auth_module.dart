import 'package:hexagonal_test/adapter/auth/out/auth_adapter.dart';
import 'package:hexagonal_test/application/auth/port/in/login_use_case.dart';
import 'package:hexagonal_test/application/auth/port/out/login_interface.dart';
import 'package:hexagonal_test/application/auth/service/auth_service.dart';

import 'package:hexagonal_test/main.dart';
import 'package:injectable/injectable.dart';


@module
abstract class AuthModule {
  LoginUseCase get loginUseCase => injector.get<AuthService>();

  LoginInterface get loginInterface => injector.get<AuthAdapter>();
}