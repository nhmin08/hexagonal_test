import 'package:get_it/get_it.dart' as get_it;
import 'package:injectable/injectable.dart' as injectable;

import 'package:hexagonal_test/adapter/auth/out/auth_adapter.dart' as auth_adapter;
import 'package:hexagonal_test/application/auth/port/in/login_use_case.dart' as login_use_case;
import 'package:hexagonal_test/application/auth/port/out/login_interface.dart' as login_interface;
import 'package:hexagonal_test/application/auth/service/auth_service.dart' as auth_service;

import 'package:hexagonal_test/di/auth_module.dart' as auth_module;

get_it.GetIt $initGetIt(get_it.GetIt get, {String? environment, injectable.EnvironmentFilter? environmentFilter}){
  final getHelper = injectable.GetItHelper(get, environment, environmentFilter);
  final authModule = _$AuthModule();

  getHelper.singleton(auth_adapter.AuthAdapter());
  getHelper.factory<login_use_case.LoginUseCase>(() => authModule.loginUseCase);
  getHelper.factory<login_interface.LoginInterface>(() => authModule.loginInterface);
  getHelper.singleton<auth_service.AuthService>(auth_service.AuthService(get<login_interface.LoginInterface>()));

  return get;
}

class _$AuthModule extends auth_module.AuthModule {}
