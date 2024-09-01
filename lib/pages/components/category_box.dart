// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/utility/color.dart';
import '/utility/images.dart';
import '/widget/text.dart';

class CategoryBox extends StatelessWidget {
  const CategoryBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Catebox(name: 'Trending'),
        Catebox(name: 'New Laws'),
        Catebox(name: 'Supreme Court'),
    Catebox(name: 'High Court'),
    Catebox(name: 'Subordinate Court'),
        Catebox(name: 'District Court'),
      ],
    );
  }
}

class Catebox extends StatelessWidget {
  const Catebox({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: Get.width / 2.3,
        height: 100,
        child: Stack(
          children: [
            Image.asset(
              catebg,
              width: Get.width,
              fit: BoxFit.cover,
            ),
            Opacity(
              opacity: 0.6,
              child: Container(
                width: Get.width / 2.3,
                height: 150,
                decoration: BoxDecoration(
                    color: forth,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Center(
                child: ReqTxt(
                    txt: name, size: 19, wide: FontWeight.w700, color: inputfil),
              ),
            )
          ],
        ),
      ),
    );
  }
}
