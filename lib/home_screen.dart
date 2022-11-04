import 'package:error_workshop/viewmodel/login_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer<LoginViewmodel>(
      builder: (BuildContext context, LoginViewmodel viewmodel, Widget? child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login",
              style: TextStyle(fontSize: 30),
            ),
            Text("Username"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder()),
                controller: usernameController,
              ),
            ),
            Text("Password"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder()),
                controller: passwordController,
              ),
            ),
            Text(
              viewmodel.message ?? "",
            ),
            ElevatedButton(
              onPressed: () => viewmodel.loginToApp(
                usernameController.text,
                passwordController.text,
              ),
              child: const Text("Login"),
            ),
          ],
        );
      },
    );
  }
}
