import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../widget/wigt.dart';
import '../tabbar.dart';

class MylibrarySecreen extends StatefulWidget {
  const MylibrarySecreen({super.key});

  @override
  State<MylibrarySecreen> createState() => _MylibrarySecreenState();
}

class _MylibrarySecreenState extends State<MylibrarySecreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: recomendcard(
                        "Dr. Alan Baker ",
                        " Cornell University",
                        "Gynecology",
                        "Menstrual bleeds"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: recomendcard(
                        "Dr. Alan Baker ",
                        " Cornell University",
                        "Gynecology",
                        "Menstrual bleeds"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: recomendcard(
                        "Dr. Alan Baker ",
                        " Cornell University",
                        "Gynecology",
                        "Menstrual bleeds"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: recomendcard(
                        "Dr. Alan Baker ",
                        " Cornell University",
                        "Gynecology",
                        "Menstrual bleeds"),
                  ),
                  // cardcatagory(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
