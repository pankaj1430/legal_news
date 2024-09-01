// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/utility/color.dart';
import '/widget/text.dart';

class Bottombar extends StatelessWidget {
  const Bottombar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 5.0,
      clipBehavior: Clip.antiAlias,
      child: SizedBox(
        height: kBottomNavigationBarHeight,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
         InkWell(
          onTap: (){
             Get.offNamed("/home");
          },
           child: Lebelicon(icon: Icons.home, label: "Home"),
         ),
         InkWell(
          onTap: (){ Get.offNamed("/search"); },
           child: Lebelicon(
                  icon: Icons.search,
                  label: "Search"),
         ),
                  InkWell(
                    onTap: (){
                Get.offNamed("/saved");
              },
                    child: Lebelicon(
                                    icon: Icons.bookmark,
                                    label: "Saved"),
                  ),
                  InkWell(
                    onTap: () {
                      Get.offNamed("/profile");
                    },  child: Lebelicon(
                                    icon: Icons.account_circle_outlined,
                                    label: "Profile"),
                  ),
        
          ],
        ),
      ),
    );
  }
}

class Lebelicon extends StatelessWidget {
  const Lebelicon({super.key, required this.label, required this.icon});
  final String label;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 30,
          color: forth,
                    ),
        SizedBox(height: 3),
       ReqTxt(txt: label, size: 15, wide: FontWeight.w500, color: forth)
      ],
    );
  }
}
