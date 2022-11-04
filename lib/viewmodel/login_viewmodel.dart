import 'package:error_workshop/exceptions/network_exception.dart';
import 'package:error_workshop/login_repoistory.dart';
import 'package:flutter/material.dart';

class LoginViewmodel extends ChangeNotifier {
  LoginViewmodel(this.repo);
  final LoginRepoistory repo;
  String? message;

  void loginToApp(
    String username,
    String password,
  ) {
    if (repo.login(username, password)) {
      message = "Login Success";
    }
    notifyListeners();
  }

  void test1() {
    throw Exception();
  }

  void test2() {
    test1();
  }

  void test3() {
    try {
      test2();
    } catch (e) {
      print(e);
    }
  }
}
