import 'package:flutter/material.dart';

import '../../../utility/color.dart';

class Textsmooth extends StatelessWidget {
  const Textsmooth({super.key, required this.txt, required this.size});
  final String txt;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      softWrap: true,
      style: TextStyle(
          fontSize: size,
          color: colors.lightcolor,
          fontWeight: FontWeight.w500),
    );
  }
}

class TextHead extends StatelessWidget {
  const TextHead({super.key, required this.txt, required this.size});
  final String txt;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      softWrap: true,
      style: TextStyle(
          fontSize: size, color: colors.headcolor, fontWeight: FontWeight.bold),
    );
  }
}

class TextDes extends StatelessWidget {
  const TextDes({super.key, required this.txt, required this.size});
  final String txt;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      softWrap: true,
      style: TextStyle(
        fontSize: size,
        color: colors.descolor,
      ),
    );
  }
}

class Textbtn extends StatelessWidget {
  const Textbtn({super.key, required this.txt, required this.size});
  final String txt;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(7)),
          color: second,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
          child: Text(
            txt,
            softWrap: true,
            style: TextStyle(
              fontSize: size,
              color: colors.lightcolor,
            ),
          ),
        ),
      ),
    );
  }
}

class TextbtnSec extends StatelessWidget {
  const TextbtnSec({super.key, required this.txt, required this.size});
  final String txt;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(7)),
          color: colors.primerycolor,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 8, 25, 8),
          child: Text(
            txt,
            softWrap: true,
            style: TextStyle(
                fontSize: size,
                color: colors.lightcolor,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}


class Textbtnx extends StatelessWidget {
  const Textbtnx({super.key, required this.txt, required this.size});
  final String txt;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(7)),
          color: second,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 4, 15, 5),
          child: Text(
            txt,
            softWrap: true,
            style: TextStyle(
              fontSize: size,
              color: colors.lightcolor,
            ),
          ),
        ),
      ),
    );
  }
}

//App Colors Define

class colors extends Material{

static Color primerycolor = const Color(0xff1a67d6);
static Color lightcolor = const Color(0xfff9f9f9);
static Color descolor = const Color(0xff505050);
static Color headcolor = const Color(0xff2e2e2e);
static Color textcolor = const Color(0xff474747);


}
