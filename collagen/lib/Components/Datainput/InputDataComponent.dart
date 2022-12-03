import 'package:collagen/Components/Datainput/InputDataForm.dart';
import 'package:collagen/size_config.dart';
import 'package:flutter/cupertino.dart';

class InputDataComponent extends StatefulWidget {
  const InputDataComponent({super.key});

  @override
  _InputDataComponent createState() => _InputDataComponent();
}

class _InputDataComponent extends State<InputDataComponent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenHeight(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight = 0.05,
                ),
                Image.asset(
                  "assets/images/Logo_Signup.png",
                  height: 200,
                  width: 252,
                ),
                const SizedBox(
                  height: 20,
                ),
                InputDataForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
