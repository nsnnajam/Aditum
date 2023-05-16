// ignore_for_file: prefer_const_constructors

import 'package:aditum/secreen/Home/Home_page.dart';
import 'package:aditum/secreen/getstarted/basicinfo.dart';
import 'package:aditum/secreen/getstarted/customradioa.dart';
import 'package:aditum/secreen/pref_secreen.dart';
import 'package:flutter/material.dart';

import '../../bottombar/bootombar.dart';
import '../affilation_secreen.dart';
import '../interst.dart';
import '../sign_up.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List pages = [
    Baiscinfo(),
    PrefSecreen(),
    Affilationsecreen(),
    InterestSecreen(),
  ];
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController(initialPage: 0);
    // slides = getSlides();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                scrollDirection: Axis.horizontal,
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                itemCount: pages.length,
                itemBuilder: (context, index) {
                  // contents of slider
                  return pages[currentIndex];
                }),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                pages.length,
                (index) => buildDot(index, context),
              ),
            ),
          ),
          Container(
            height: 40,
            margin: const EdgeInsets.all(30),
            width: 120,
            color: Colors.blue,
            child: MaterialButton(
              height: 20,
              minWidth: 40,
              onPressed: () {
                setState(() {
                  currentIndex = currentIndex + 1;
                });

                if (currentIndex == pages.length - 1) {
                  print("object");
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Bottombar()),
                  );
                }
                _controller.nextPage(
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.bounceIn);
              },
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35),
              ),
              child:
                  Text(currentIndex == pages.length - 1 ? "Continue" : "Next"),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }

// container created for dots
  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 35 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue,
      ),
    );
  }
}

// ignore: must_be_immutable
// slider declared
