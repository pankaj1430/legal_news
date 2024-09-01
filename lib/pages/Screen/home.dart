// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../pages/components/carousel_silder.dart';
import '../../pages/components/feature_news.dart';
import '../../utility/color.dart';
import '../../widget/buttomnavgation.dart';
import '../../widget/text.dart';

// import '../../widget/drawer.dart';
import '../components/box_news.dart';
import '../components/newsbox.dart';
import '../components/row_news.dart';
import '../components/search_bar.dart';
import '../components/tabs.dart';
import '../components/widget/feature_new.dart';
import '../components/widget/news_nex.dart';
import '../components/widget/news_silde.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: forth),
          backgroundColor: inputfil,
          title: const ReqTxt(
            txt: "Legal News",
            size: 22,
            wide: FontWeight.bold,
            color: second,
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
            bottom: const TabBar(
            isScrollable: true, // Required
            unselectedLabelColor: Colors.white30, // Other tabs color
            // labelPadding: EdgeInsets.all(12),
            // labelPadding:
            //     EdgeInsets.symmetric(horizontal: 30), // Space between tabs
            // indicator: UnderlineTabIndicator(
            //   borderSide:
            //       BorderSide(color: Colors.white, width: 2), // Indicator height
            //   insets: EdgeInsets.symmetric(horizontal: 48), // Indicator width
            // ),
            tabs: [
              Tab(child: ReqTxt(txt: "All Courts News", size: 16, wide: FontWeight.w500, color: forth )),
                Tab(
                  child: ReqTxt(
                      txt: "Supreme Court News", size: 16, wide: FontWeight.w500, color: forth)),
              Tab(
                  child: ReqTxt(
                      txt: "High Court News", size: 16, wide: FontWeight.w500, color: forth)),
              Tab(
                  child: ReqTxt(
                      txt: "Subordinate Court News", size: 16, wide: FontWeight.w500, color: forth)),
              Tab(
                  child: ReqTxt(
                      txt: "District Court News", size: 16 , wide: FontWeight.w500, color: forth)),
    
            ],

          ),
          
        ),
        // drawer: Drawers(),
        body: TabBarView(
          children: [
              SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                   Search_Bar(),
                  const Tabsbox(),
                  SizedBox(height: 10),
                  Carousel(),
                  const FeatureNews(),
                  const NewsSecRow(),
                  const News()
                ],
              ),
            ),
            const SingleChildScrollView(
              child: Column(
                children: [
                  NewsBox(),
                  NewsBox()
                ],
              ),
            ),
             const SingleChildScrollView(
                child: Column(
                  children: [NewsSildex(),
                  FeatureNewsx(),
                    Newsnex(),

                  ],
                ),
              ),
             const SingleChildScrollView(
                child: Column(
                  children: [
                    FeatureNewsx(),
                    FeatureNewsx(),
                    FeatureNewsx(),
                  ],
                ),
              ),
              const SingleChildScrollView(
                child: Column(
                  children: [
                    Newsnex(),
                    FeatureNewsx(),
                  ],
                ),
              ),
          ],
        ), 
        
        bottomNavigationBar: const Bottombar()
      ),
    );
  }
}
