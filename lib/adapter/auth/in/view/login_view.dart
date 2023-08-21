import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:hexagonal_test/utils/theme/godoc_color.dart';
import 'package:hexagonal_test/utils/theme/godoc_text_style.dart';

import 'package:hexagonal_test/adapter/auth/in/view_model/login_view_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => LoginViewState();
}

class LoginViewState extends State<LoginView> {
  LoginViewModel loginViewModel = Get.put(LoginViewModel());

  late GodocColors godocColors;
  late GodocTextStyle godocTextStyle;

  final _idFormKey = GlobalKey<FormState>();
  final _passwordFormKey = GlobalKey<FormState>();

  bool? idValidate;
  bool? pwValidate;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    godocColors = Theme.of(context).extension<GodocColors>()!;
    godocTextStyle = GodocTextStyle(context);

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Center(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                  child: Column(
                    children: [
                      const Spacer(),
                      logoImage(),
                      const SizedBox(height: 5),
                      logoText(),
                      const Spacer(),
                      idTextField(),
                      const SizedBox(height: 15),
                      passwordTextField(),
                      const SizedBox(height: 30),
                      loginButton(),
                      findIdPasswordButton(),
                      const Spacer(),
                      signUp(),
                      const Spacer(),
                    ],
                  ),
                )),
          ],
        ));
  }

  Widget logoImage() {
    return Expanded(
      //가변 로고
        child: Image.asset(
          'assets/images/sad_cat.png',
          width: 80,
          height: 80,
        ));
  }

  Widget logoText() {
    return SizedBox(
      width: double.infinity,
      child: Text(
        'GoDoc',
        textAlign: TextAlign.center,
        style: godocTextStyle.title.copyWith(color: godocColors.godocBlue600),
      ),
    );
  }

  Widget idTextField() {
    return Form(
        key: _idFormKey,
        child: SizedBox(
          height: (idValidate != false) ? 45 : 70,
          child: TextFormField(
            onSaved: (value) {
              setState(() {
                loginViewModel.id = value as String;
              });
            },
            validator: (value) {
              if (value!.isEmpty) {
                setState(() {
                  idValidate = false;
                });
                return '아이디를 입력해 주세요';
              }
              return null;
            },
            decoration: InputDecoration(
                hintText: '아이디를 입력해 주세요',
                hintStyle: godocTextStyle.bodyText3
                    .copyWith(color: godocColors.godocGray400),
                enabledBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                    borderSide:
                    BorderSide(width: 2, color: godocColors.godocBlue300!)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                    borderSide:
                    BorderSide(width: 2, color: godocColors.godocBlue500!)),
                focusedErrorBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                    borderSide:
                    BorderSide(width: 2, color: godocColors.godocRed500!)),
                errorBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                    borderSide:
                    BorderSide(width: 2, color: godocColors.godocRed500!))),
          ),
        ));
  }

  Widget passwordTextField() {
    return Form(
        key: _passwordFormKey,
        child: SizedBox(
          height: (pwValidate != false) ? 45 : 70,
          child: TextFormField(
            onSaved: (value) {
              setState(() {
                loginViewModel.password = value as String;
              });
            },
            validator: (value) {
              if (value!.length < 8 ||
                  !value.contains(RegExp(r'(\d+)')) ||
                  !value.contains(RegExp(r'[a-zA-Z]')) ||
                  !value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                setState(() {
                  pwValidate = false;
                });
                return '틀린 형식의 비밀번호 입니다.';
              }
              return null;
            },
            decoration: InputDecoration(
                hintText: '비밀번호를 입력해 주세요',
                hintStyle: godocTextStyle.bodyText3
                    .copyWith(color: godocColors.godocGray400),
                enabledBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                    borderSide:
                    BorderSide(width: 2, color: godocColors.godocBlue300!)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                    borderSide:
                    BorderSide(width: 2, color: godocColors.godocBlue500!)),
                focusedErrorBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                    borderSide:
                    BorderSide(width: 2, color: godocColors.godocRed500!)),
                errorBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                    borderSide:
                    BorderSide(width: 2, color: godocColors.godocRed500!))),
            obscureText: true,
          ),
        ));
  }

  Widget loginButton() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () async {
          _idFormKey.currentState!.save();
          _passwordFormKey.currentState!.save();

          if (_idFormKey.currentState!.validate() &&
              _passwordFormKey.currentState!.validate()){
            loginViewModel.loginButtonClick();
          }
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(godocColors.godocBlue600),
        ),
        child: Text(
          'Login',
          style:
          godocTextStyle.bodyText.copyWith(color: godocColors.godocGray50),
        ),
      ),
    );
  }

  Widget findIdPasswordButton() {
    return TextButton(
      onPressed: () {
      },
      child: Text(
        '아아디 / 비밀번호 찾기',
        style:
        godocTextStyle.bodyText3.copyWith(color: godocColors.godocBlue600),
      ),
    );
  }

  Widget oauthDivider() {
    return Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
        child: Row(
          children: [
            Expanded(child: Divider(color: godocColors.godocGray500)),
            Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                child: Text('others',
                    style: godocTextStyle.bodyText
                        .copyWith(color: godocColors.godocGray500))),
            Expanded(child: Divider(color: godocColors.godocGray500)),
          ],
        ));
  }

  Widget signUp() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '계정이 없으신가요?',
          style: godocTextStyle.bodyText,
        ),
        const SizedBox(width: 5),
        singUpButton()
      ],
    );
  }

  Widget singUpButton() {
    return TextButton(
      onPressed: () {
      },
      child: Text(
        'Sign up',
        style:
        godocTextStyle.headline2.copyWith(color: godocColors.godocBlue600),
      ),
    );
  }
}
