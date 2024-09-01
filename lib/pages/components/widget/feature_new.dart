import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'custom.dart';

class FeatureNewsx extends StatelessWidget {
  const FeatureNewsx({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Featnews(),
          Featnews(),
          Featnews(),
        ],
      ),
    );
  }
}

class Featnews extends StatelessWidget {
  const Featnews({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 14, 15, 10),
        child: Container(
          width: Get.width,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(9)),
                child: Image.asset(
                  width: Get.width,
                  height: 220,
                  "assets/images/s3.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 3),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  "Narendra Modi in Wayanad today: PM to visit landslides-hit areas in Kerala | Full schedule",
                  style: TextStyle(
                    color: colors.headcolor,
                    fontSize: 19.0,
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
                    fontSize: 16.0,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(height: 4),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Textbtn(
                    txt: "POLITICS",
                    size: 15,
                  ),
                  TextDes(
                    txt: "27 july 2024",
                    size: 16,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
