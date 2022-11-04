import 'package:error_workshop/exceptions/api_exception.dart';
import 'package:error_workshop/exceptions/network_exception.dart';

class LoginApi {
  bool hasInternet = true;
  bool apiError = false;
  bool login(String email, String password) {
    if (!hasInternet) {
      throw NetworkException("Internet Error");
    }
    if (!apiError) {
      throw ApiException("Api Error");
    }
    return true;
  }
}
