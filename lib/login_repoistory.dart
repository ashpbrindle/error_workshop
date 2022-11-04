import 'package:error_workshop/logger.dart';
import 'package:error_workshop/login_api.dart';

class LoginRepoistory {
  LoginRepoistory(this.loginApi);
  final LoginApi loginApi;

  bool login(String email, String password) {
    if (email.isEmpty && password.isEmpty) {
      throw Exception("email and password missing");
    }
    if (email.isEmpty) {
      throw Exception("email missing");
    }
    if (password.isEmpty) {
      throw Exception("password missing");
    }
    var response = loginApi.login(email, password);
    Logger.log("Login Response: $response");
    return response;
  }
}
