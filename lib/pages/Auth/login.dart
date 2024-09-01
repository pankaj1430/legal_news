// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utility/color.dart';
import '../../utility/icons.dart';
import '../../widget/button.dart';
import '../../widget/svg.dart';
import '../../widget/text.dart';
import '../../utility/inputcontrollers.dart';
import '../../widget/inputbox.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            SmoothTxt(txt: "Todays News", size: 29, wide: FontWeight.w600),
            const SizedBox(height: 50),
            Center(
                child:Svg90(icon: loginicon,)),
            const SizedBox(height: 50),
            Inputbox(
                control: signupcontroller,
                color: inputfil,
                placeholder: "Enter Username"),
                  Inputbox(
                control: signupcontroller,
                color: inputfil,
                placeholder: "Enter Password"),
            const SizedBox(height: 70),
            Primarybtn(
              txt: "Login",
              color: second,
              size: Size(Get.width / 1.5, 50),
              fsize: 22,
              press: () {
                Get.offNamed("/home");
              },
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: SmoothTxt(txt: "or", size: 24, wide: FontWeight.w500),
            ),
            Svgicon(icon: Gicon, action: () {}),
          ],
        ),
      ),
    );
  }
}
