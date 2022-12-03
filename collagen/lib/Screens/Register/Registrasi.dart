import 'package:collagen/Components/Login/LoginComponent.dart';
import 'package:collagen/size_config.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  static String routeName = "/sign_up";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      // body: LoginComponent(),
    );
  }
}