import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'custom.dart';

class Newsnex extends StatelessWidget {
  const Newsnex({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
        rown(),
        rown(),
        rown(),
      ]),
    );
  }
}

class rown extends StatelessWidget {
  const rown({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      child: Row(
        children: [
          Container(
            width: Get.width / 2.5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                child: Image.asset(
                  "assets/images/s1.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            width: Get.width / 1.7,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text(
                    "Narendra Modi in Wayanad today: PM to visit landslides-hit areas in Kerala | Full schedule",
                    style: TextStyle(
                      color: colors.headcolor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    "Prime Minister Narendra Modi is scheduled to visit Kerala's Wayanad district on Saturday, August 10, to take stock of the situation in the landslide-affected areas and assess the ongoing relief and rehabilitation efforts in the region. The prime minister will meet victims of the landslide in hospitals and relief camps and ensure proper support for those affected in the tragedy.",
                    style: TextStyle(
                      color: colors.descolor,
                      fontSize: 15.0,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Textbtn(
                      txt: "POLITICS",
                      size: 13,
                    ),
                    TextDes(
                      txt: "27 july 2024",
                      size: 15,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
