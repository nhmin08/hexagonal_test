import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

import 'package:hexagonal_test/adapter/auth/in/view/login_view.dart';
import 'package:injectable/injectable.dart';

import 'main.config.dart';

import 'package:hexagonal_test/utils/theme/theme.dart';

final injector = GetIt.instance;

@InjectableInit()
void configureDependencies() => $initGetIt(injector);

void main() async {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'hexagonal test',
      theme: GodocTheme.lightTheme,
      darkTheme: GodocTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const LoginView(),
    );
  }
}


