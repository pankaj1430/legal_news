// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:legal_news/widget/text.dart';

import '../../utility/color.dart';
import '../../utility/icons.dart';

class Tabsbox extends StatelessWidget {
  const Tabsbox({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: const Row(
        children: [
          Tobbox(name: "My Feed", img: feedicon,),
                Tobbox(
            name: "All News",
            img: newsicon,
          ),
          Tobbox(
            name: "Bookmark",
            img: bookmarkicon,
          ),
          Tobbox(name: "Trending", img: trendicon,),
      
        ],
      ),
    );
  }
}
class Tobbox extends StatelessWidget {
  const Tobbox({super.key, required this.name, required this.img});
  final String name;
  final String img;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Get.width/25),
      child: Column(
        children: [
          Image.asset(
            img,
            width: 50,
            // height: 60,
          ),
          const SizedBox(height: 7),
          ReqTxt(
              txt: name, size: 16, wide: FontWeight.w400, color: forth),
        ],
      ),
    );
  }
}
