import 'package:error_workshop/home_screen.dart';
import 'package:error_workshop/login_api.dart';
import 'package:error_workshop/login_repoistory.dart';
import 'package:error_workshop/viewmodel/login_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) => LoginViewmodel(
        LoginRepoistory(
          LoginApi(),
        ),
      ),
      child: MaterialApp(
        home: Scaffold(
          // appBar: AppBar(),
          body: SafeArea(
            child: const HomeScreen(),
          ),
        ),
      ),
    ),
  );
}
