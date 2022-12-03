import 'package:collagen/Screens/Register/Registrasi.dart';
import 'package:collagen/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInForm createState() => _SignInForm();
}

class _SignInForm extends State<SignInForm> {

  final _formKey = GlobalKey<FormState>();
  String? username;
  String? password;

  TextEditingController txtUserName = TextEditingController(),
      txtPassword = TextEditingController();

  FocusNode focusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildUserName(),
          SizedBox(height:30),
          buildPassword(),
          SizedBox(height:30),
          Row(
            children: [
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Text(
                    "Lupa Kata Sandi?",
                ),
              )
            ],
          ),
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateColor.resolveWith((states) => kColorBlue),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            onPressed: () { },
            child: Text('Login'),
          ),
          SizedBox(
            height: 200,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context, RegisterScreen.routeName);
                },
                child: Text("Belum memiliki akun? Daftar", style: TextStyle(decoration: TextDecoration.underline),),
              )
            ],
          )
        ],
      ),
    );
  }

  TextFormField buildUserName() {
    return TextFormField(
      controller: txtUserName,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Nama Pengguna',
        hintText: 'Masukkan Nama Pengguna',
        labelStyle: TextStyle(
            color: focusNode.hasFocus ? mTitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildPassword() {
    return TextFormField(
      controller: txtPassword,
      obscureText: true,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Kata Sandi',
        hintText: 'Masukkan Kata Sandi',
        labelStyle: TextStyle(
            color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
