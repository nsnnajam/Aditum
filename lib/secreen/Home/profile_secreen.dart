// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:aditum/widget/wigt.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'bend_secreen.dart';

class ProfileSecreen extends StatefulWidget {
  const ProfileSecreen({super.key});

  @override
  State<ProfileSecreen> createState() => _ProfileSecreenState();
}

class _ProfileSecreenState extends State<ProfileSecreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              ClipPath(
                clipper: CurveClipper(),
                child: Container(
                  color: Color(0xff4FB9D3),
                  height: 200.0,
                ),
              ),
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.notifications)),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.settings)),
                    ],
                  ),
                  SizedBox(
                    height: 120,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/profile2.png"),
                    radius: 35,
                  ),

                  myText("Ricardo Delacruz", Colors.black, 16, FontWeight.w600),
                  myText("Healthcare Professional", Colors.black, 13,
                      FontWeight.w500),
                  myText("University of Phoenix United States", Colors.black,
                      11, FontWeight.w500),
                  Container(
                    height: 45,
                    width: 335,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(
                        0xff6B79E4,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        myText("Complete your Profile!", Colors.white, 14,
                            FontWeight.w600),
                        myText(
                            "50% complete", Colors.white, 12, FontWeight.w400),
                      ],
                    ),
                  ),

                  //cardbox data
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //boxs
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                cardboxdata("125", "Followers"),
                                cardboxdata("45", "Cases Played"),
                                cardboxdata("96", "Followers"),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            //get verified
                            Container(
                              height: 50,
                              width: 335,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color.fromARGB(107, 42, 109, 154),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(Icons.verified,
                                          color: Color(0xff6B79E4)),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      myText("Get Verified", Color(0xff6B79E4),
                                          14, FontWeight.w600),
                                      Spacer(),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 5),
                                        child: InkWell(
                                            onTap: () {},
                                            child: Image.asset(
                                                "assets/rightarrow.png")),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 45),
                                    child: myText(
                                        "This will unlock potential features",
                                        Color(0xff6B79E4),
                                        12,
                                        FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),

                            //see your statics
                            Container(
                              height: 50,
                              width: 335,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color.fromARGB(107, 42, 154, 145),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(Icons.verified,
                                          color: Color(0xff6B79E4)),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      myText(
                                          "See your statistics",
                                          Color(0xff4FB9D3),
                                          14,
                                          FontWeight.w600),
                                      Spacer(),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 5),
                                        child: InkWell(
                                            onTap: () {},
                                            child: Image.asset(
                                                "assets/rightarrow.png")),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 45),
                                    child: myText(
                                        "You have performed well in cardiology!",
                                        Color(0xff4FB9D3),
                                        12,
                                        FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              myText("Interests", Colors.black, 14,
                                  FontWeight.w500),
                              Spacer(),
                              IconButton(
                                  onPressed: () {},
                                  icon: Image.asset("assets/plusbtn.png"))
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 31,
                                decoration: BoxDecoration(
                                    color: Color(0xff6B79E4),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset("assets/heart.png"),
                                    myText("Cardiology", Colors.white, 12,
                                        FontWeight.w500),
                                    IconButton(
                                        onPressed: () {},
                                        icon:
                                            Image.asset("assets/cancelbtn.png"))
                                  ],
                                ),
                              ),
                              Container(
                                height: 31,
                                decoration: BoxDecoration(
                                    color: Color(0xff6B79E4),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset("assets/heart.png"),
                                    myText("Internal Medicine", Colors.white,
                                        12, FontWeight.w500),
                                    IconButton(
                                        onPressed: () {},
                                        icon:
                                            Image.asset("assets/cancelbtn.png"))
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 31,
                                decoration: BoxDecoration(
                                    color: Color(0xff6B79E4),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset("assets/heart.png"),
                                    myText("Cardiology", Colors.white, 12,
                                        FontWeight.w500),
                                    IconButton(
                                        onPressed: () {},
                                        icon:
                                            Image.asset("assets/cancelbtn.png"))
                                  ],
                                ),
                              ),
                              Container(
                                height: 31,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Color(0xff6B79E4),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset("assets/heart.png"),
                                    myText("Immunology", Colors.white, 12,
                                        FontWeight.w500),
                                    IconButton(
                                        onPressed: () {},
                                        icon:
                                            Image.asset("assets/cancelbtn.png"))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
