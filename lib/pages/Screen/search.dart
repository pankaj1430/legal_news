// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '/pages/components/category_box.dart';

import '../../widget/buttomnavgation.dart';
import '../../widget/widget.dart';
import '../components/search_bar.dart';
import '../../utility/color.dart';
// import '../../widget/drawer.dart';
import '../../widget/text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: forth),
          backgroundColor: inputfil,
          title: ReqTxt(
            txt: "Search",
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
      body: SingleChildScrollView(
         scrollDirection: Axis.vertical,
        child: Column(
          children: [
             SearchBarin(),
        Defaultspace(), 
        CategoryBox(),
        
          ],
        ),
      ),
        bottomNavigationBar: Bottombar()
    );
  }
}