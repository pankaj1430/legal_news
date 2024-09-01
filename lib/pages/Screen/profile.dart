// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/utility/images.dart';

import '../../utility/color.dart';
import '../../widget/buttomnavgation.dart';
import '../../widget/button.dart';
// import '../../widget/drawer.dart';
import '../../widget/text.dart';
import '../../widget/widget.dart';
import '../components/navigatorsui.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: forth),
          backgroundColor: inputfil,
          title: ReqTxt(
            txt: "My Profile",
            size: 19,
            wide: FontWeight.w500,
            color: forth,
          ),
          elevation: 0.0,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.dark_mode_outlined,
                  color: forth,
                ))
          ],
        ),
        // drawer: Drawers(),
        body: SingleChildScrollView(
           scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Profileavt(
                  image: news1, name: "Sana Shine", des: "Fashion & Designer"),
              SizedBox(height: 30),
              InkWell(
                onTap: (){
          Get.offNamed('/home');
                },
                child: Navigatorsui(
                  name: "Home",
                ),
              ),
              InkWell(
                    onTap: () {
                  Get.offNamed('/search');
                },
                child: Navigatorsui(name: "Search"),
              ),
              InkWell(
                  onTap: () {
                  Get.offNamed('/profile');
                },
                child: Navigatorsui(name: "Update Profile" ),
              ),
              InkWell(
                     onTap: () {
                  Get.offNamed('/saved');
                },
                child: Navigatorsui(name: "Saved"),
              ),
              SizedBox(height: 50),
              Primarybtn(
                txt: "Logout",
                color: forth,
                fsize: 19,
                press: () {
                  Get.toNamed('/signup');
                },
                size: Size(160, 50),
              )
            ],
          ),
        ),
        bottomNavigationBar: Bottombar());
  }
}
