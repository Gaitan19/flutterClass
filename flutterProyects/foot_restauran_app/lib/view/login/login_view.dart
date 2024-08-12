import 'package:flutter/material.dart';
import 'package:foot_restauran_app/common/color_extenstion.dart';
import 'package:foot_restauran_app/common_widget/line_textfield.dart';
import 'package:foot_restauran_app/common_widget/round_button.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController txtEmail = TextEditingController();

  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            width: media.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: media.width * 0.07,
                ),
                Text(
                  "Welcome to\nCapi Restaurant",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: TColor.text,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: media.width * 0.02,
                ),
                Text(
                  "Sign in to continue",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: TColor.gray,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: media.width * 0.07,
                ),
                LineTextField(controller: txtEmail, hitText: "Email"),
                SizedBox(
                  height: media.width * 0.07,
                ),
                LineTextField(
                  controller: txtPassword,
                  hitText: "Password",
                  obscureText: true,
                ),
                SizedBox(
                  height: media.width * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: TColor.primary,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        )),
                  ],
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                RoundButton(
                  title: "Login",
                  onPressed: () {},
                  type: RoundButtonType.primary,
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "New to Capi Restaurant?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: TColor.gray,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Signup",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: TColor.primary,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
