// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:aditum/secreen/setting/settingpage.dart';
import 'package:flutter/material.dart';

import '../../widget/wigt.dart';
import '../notification/notficationbtn.dart';

class HomePagesecreen extends StatefulWidget {
  const HomePagesecreen({super.key});

  @override
  State<HomePagesecreen> createState() => _HomePagesecreenState();
}

class _HomePagesecreenState extends State<HomePagesecreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 140,
                  width: 400,
                  child: Column(
                    children: [
                      Notificationbtn(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          myText("Welcome back , Ali", Colors.black, 16,
                              FontWeight.bold),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.search))
                        ],
                      ),
                      const Text(
                          "Hope you are ready for some challeging cases today"),

                      // cardcatagory(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 108,
                  width: 400,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: cardcatagory(),
                      );
                    },
                  ),
                ), //catagory card
                myText("Case of the day", Colors.black, 15, FontWeight.w600),
                const SizedBox(
                  height: 10,
                ),
                Center(child: cardcaseday()),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: myText(
                      "Recommended For You", Colors.black, 15, FontWeight.w600),
                ),

                recomendcard("Dr. Vincent Bouchard ", "University of Montreal",
                    "Infectious Disease", "Rheumatic or neurologic ?"),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      myText("Newest Cases", Colors.black, 15, FontWeight.w600),
                ),
                recomendcard("Dr. Alan Baker ", " Cornell University",
                    "Gynecology", "Menstrual bleeds"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: myText(
                      "Popular Right Now", Colors.black, 15, FontWeight.w600),
                ),
                recomendcard("Dr. Alan Baker ", " Cornell University",
                    "Gynecology", "Menstrual bleeds"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: myText(
                      "Remember About", Colors.black, 15, FontWeight.w600),
                ),
                rememberAbout()
              ],
              //main cllmn
            ),
          ),
        ),
      ),
    );
  }
}
