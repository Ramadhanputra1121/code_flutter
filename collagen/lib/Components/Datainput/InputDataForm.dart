import 'package:collagen/Screens/Login/LoginScreen.dart';
import 'package:collagen/utils/constants.dart';
import 'package:flutter/material.dart';

class InputDataForm extends StatefulWidget {
  const InputDataForm({super.key});

  @override
  _InputDataForm createState() => _InputDataForm();
}

class _InputDataForm extends State<InputDataForm> {
  String? namadepan;
  String? namabelakang;
  String? tanggallahir;
  String? jeniskelamin;
  String? univeritas;

  TextEditingController txtNamaDepan = TextEditingController();
  TextEditingController txtNamaBelakang = TextEditingController();
  TextEditingController txtTanggalLahir = TextEditingController();
  TextEditingController txtJenisKelamin = TextEditingController();
  TextEditingController txtUniversitas = TextEditingController();

  FocusNode focusNode = FocusNode();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildFirstName(),
          SizedBox(height: 20),
          buildLastName(),
          SizedBox(height: 20),
          buildBirthDate(),
          SizedBox(height: 20),
          buildGender(),
          SizedBox(height: 20),
          buildUniversitas(),
          SizedBox(height: 20),
          Container(
            width: 400,
            height: 45,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xff3167FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.routeName);
              },
              child: const Text(
                "Daftar",
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }

  TextFormField buildFirstName() {
    return TextFormField(
      controller: txtNamaDepan,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        hintText: 'Nama Depan',
        labelStyle:
        TextStyle(color: focusNode.hasFocus ? mTitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildLastName() {
    return TextFormField(
      controller: txtNamaBelakang,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        hintText: 'Nama Belakang',
        labelStyle: TextStyle(
            color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildBirthDate() {
    return TextFormField(
      controller: txtTanggalLahir,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        hintText: 'Tanggal Lahir',
        labelStyle: TextStyle(
            color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildGender() {
    return TextFormField(
      controller: txtTanggalLahir,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        hintText: 'Jenis Kelamin',
        labelStyle: TextStyle(
            color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildUniversitas() {
    return TextFormField(
      controller: txtUniversitas,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        hintText: 'Universitas Asal',
        labelStyle: TextStyle(
            color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
