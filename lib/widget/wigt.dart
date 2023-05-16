// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

Widget myText(String txt, color, double size, font) {
  return Text(
    txt,
    style: TextStyle(color: color, fontSize: size, fontWeight: font),
  );
}

Widget cardcatagory() {
  return Container(
    height: 89,
    width: 108,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.blue,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [Icon(Icons.monitor_heart), Text("heart")],
    ),
  );
}

Widget cardcaseday() {
  return Container(
    height: 250,
    width: 333,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: const Color(0xff4FB9D3),
    ),
    child: Column(
      children: [
        Row(
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 26,
                      width: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xffFFFFFF),
                      ),
                      child: Center(
                          child: myText("Neurology", const Color(0xff4FB9D3),
                              12, FontWeight.w500))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      height: 32,
                      width: 176,
                      child: myText(
                          "Come find out more about this  mysterious nurology cases",
                          const Color(0xffFFFFFF),
                          14,
                          FontWeight.w700)),
                ),
                //dr profile
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.asset("assets/profile.png"),
                      const SizedBox(
                        width: 6,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              myText("Dr. Eric Yamga ", const Color(0xffFFFFFF),
                                  12, FontWeight.bold),
                              Image.asset("assets/check.png"),
                            ],
                          ),
                          myText("McGill University", const Color(0xffFFFFFF),
                              12, FontWeight.w400),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            //casestdpic
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Image.asset("assets/casestd.png"),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: myText(
              "A 50 year old man without any cardiovascular risk factors presented with new-onset hemiplegia.",
              Colors.white,
              12,
              FontWeight.w400),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 161,
                height: 26,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xff363F87),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  child: const Text("Start"),
                ),
              ),
            ),
            IconButton(onPressed: () {}, icon: Image.asset("assets/share.png")),
            IconButton(onPressed: () {}, icon: Image.asset("assets/copy.png"))
          ],
        )
      ],
    ), //main column
  );
}

Widget recomendcard(String drname, uniname, catgoryname, diases) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
          colors: [
            //background: linear-gradient(26.71deg, #FFFFFF 15.88%, #8994EC 128.99%, #949FF3 128.99%);
            Color(0xff8994EC),

            Color(0xffFFFFFF),

            // Color(0xffD8D8D8),
            // Color(0xffEEEEEE),
          ],
          // begin: Alignment.topLeft, //begin of the gradient color
          // end: Alignment.bottomLeft, //end of the gradient color
          // stops: [0, 0.2, 0.5, 0.8] //stops for individual color
          //set the stops number equal
        )),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset("assets/profile.png"),
                  const SizedBox(
                    width: 6,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          myText(drname, const Color(0xffFFFFFF), 12,
                              FontWeight.bold),
                          Image.asset("assets/check.png"),
                        ],
                      ),
                      myText(uniname, const Color(0xffFFFFFF), 12,
                          FontWeight.w400),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 26,
                  width: 105,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xff6F7BD7),
                  ),
                  child: Center(
                      child: myText(catgoryname, const Color(0xffFFFFFF), 12,
                          FontWeight.w500))),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              myText(diases, const Color(0xff363F87), 14, FontWeight.w700),
              const Spacer(),
              const Icon(Icons.star),
              myText("4.1", const Color(0xff363F87), 12, FontWeight.w400),
            ],
          ),
        ),
        Column(
          children: [
            //objective
            MyExpansionPanelList(),
            SizedBox(
              height: 10,
            ),
            //bootom data published
            Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        myText("Date Published", Color.fromARGB(70, 8, 8, 11),
                            8, FontWeight.w400),
                        SizedBox(
                          width: 10,
                        ),
                        myText("Level", Color.fromARGB(70, 8, 8, 11), 8,
                            FontWeight.w400),
                        SizedBox(
                          width: 10,
                        ),
                        myText("Liked", Color.fromARGB(70, 8, 8, 11), 8,
                            FontWeight.w400),
                        SizedBox(
                          width: 10,
                        ),
                        myText("Played", Color.fromARGB(70, 8, 8, 11), 8,
                            FontWeight.w400),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        myText("May 2023", Color.fromARGB(70, 8, 8, 11), 9,
                            FontWeight.w400),
                        SizedBox(
                          width: 10,
                        ),
                        myText("Resident", Color.fromARGB(70, 8, 8, 11), 9,
                            FontWeight.w400),
                        SizedBox(
                          width: 10,
                        ),
                        myText("250", Color.fromARGB(70, 8, 8, 11), 9,
                            FontWeight.w400),
                        SizedBox(
                          width: 10,
                        ),
                        myText("550", Color.fromARGB(70, 8, 8, 11), 9,
                            FontWeight.w400),
                      ],
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset("assets/share.png"),
                  iconSize: 11,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/copy.png"),
                    iconSize: 11),
                SizedBox(
                  width: 65,
                  height: 25,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xff363F87),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    child: const Text("Start"),
                  ),
                ),
              ],
            ),

            //Objectives :
          ],
        ),
      ],
    ),
  );
}

Widget rememberAbout() {
  return SizedBox(
    width: 335,
    height: 96,
    child: Card(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Image.asset("assets/64.png"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                myText("Treatment of Aortic Stenosis", Color(0xff363F87), 13,
                    FontWeight.w600),
                SizedBox(
                  width: 200,
                  child: myText(
                      "Remember that severity and risk stratification are the first steps",
                      Color(0xff717171),
                      10,
                      FontWeight.w600),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 120,
                    ),
                    SizedBox(
                      width: 70,
                      height: 26,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xff363F87),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        child: const Text("View"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

class MyExpansionPanelList extends StatefulWidget {
  @override
  _MyExpansionPanelListState createState() => _MyExpansionPanelListState();
}

class _MyExpansionPanelListState extends State<MyExpansionPanelList> {
  List<bool> _isOpenList = [false];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: ExpansionPanelList(
        //  elevation: 1,
        expansionCallback: (index, isExpanded) {
          setState(() {
            _isOpenList[index] = !isExpanded;
          });
        },
        children: [
          ExpansionPanel(
            backgroundColor: Color.fromARGB(255, 200, 197, 197),
            isExpanded: _isOpenList[0],
            headerBuilder: (context, isExpanded) {
              return Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  title: Text('Objective'),
                  trailing: Text(
                    // ignore: unrelated_type_equality_checks
                    isExpanded == true ? "Close" : "See All",
                    style: TextStyle(color: Color(0xff363F87)),
                  ),
                ),
              );
            },
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Content goes here.'),
                Text("1. Learn about HIV,"),
                Text("2. Learn about HIV,"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget richtxt() {
  return Container(
      padding: const EdgeInsets.all(10),
      child: Center(
        child: RichText(
          text: TextSpan(
              text: 'Don\'t have an account?',
              style: TextStyle(color: Colors.black, fontSize: 18),
              children: <TextSpan>[
                TextSpan(
                  text: ' Sign up',
                  style: TextStyle(color: Colors.blueAccent, fontSize: 18),
                ),
              ]),
        ),
      ));
}

Widget mylibrarycard(String drname, uniname, catgoryname, diases) {
  return badges.Badge(
    badgeContent: Icon(
      Icons.verified_sharp,
      color: Colors.white,
    ),
    position: badges.BadgePosition.topEnd(top: -15),
    badgeStyle: badges.BadgeStyle(
      shape: badges.BadgeShape.circle,
      badgeColor: Color(0xff4FB9D3),
      // padding: EdgeInsets.all(5),
      // borderRadius: BorderRadius.circular(4),

      // borderSide: BorderSide(color: Colors.white, width: 2),
      // borderGradient: badges.BadgeGradient.linear(
      //     colors: [Colors.red, Colors.black]),
      // badgeGradient: badges.BadgeGradient.linear(
      //     colors: [Colors.blue, Colors.yellow],
      //     begin: Alignment.topCenter,
      //     end: Alignment.bottomCenter,
      // ),
      elevation: 1,
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        // color: Color(0xff8994EC),

        gradient: const LinearGradient(
          colors: [
            //background: linear-gradient(26.71deg, #FFFFFF 15.88%, #8994EC 128.99%, #949FF3 128.99%);
            Color(0xff8994EC),
            Color(0xff8994EC),

            // Color(0xffFFFFFF),

            // Color(0xffD8D8D8),
            // Color(0xffEEEEEE),
          ],
          // begin: Alignment.topLeft, //begin of the gradient color
          // end: Alignment.bottomLeft, //end of the gradient color
          // stops: [0, 0.2, 0.5, 0.8] //stops for individual color
          //set the stops number equal
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset("assets/profile.png"),
                    const SizedBox(
                      width: 6,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            myText(drname, const Color(0xffFFFFFF), 12,
                                FontWeight.bold),
                            Image.asset("assets/check.png"),
                          ],
                        ),
                        myText(uniname, const Color(0xffFFFFFF), 12,
                            FontWeight.w400),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 26,
                    width: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xff6F7BD7),
                    ),
                    child: Center(
                        child: myText(catgoryname, const Color(0xffFFFFFF), 12,
                            FontWeight.w500))),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                myText(diases, const Color(0xffFFFFFF), 14, FontWeight.w700),
                const Spacer(),
                const Icon(
                  Icons.star,
                  color: Color(0xffFFFFFF),
                ),
                myText("4.1", const Color(0xffFFFFFF), 12, FontWeight.w400),
              ],
            ),
          ),
          Column(
            children: [
              //objective
              MyExpansionPanelList(),
              SizedBox(
                height: 10,
              ),
              //bootom data published
              Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          myText("Date Published", Color(0xffFFFFFF), 8,
                              FontWeight.w400),
                          SizedBox(
                            width: 10,
                          ),
                          myText(
                              "Level", Color(0xffFFFFFF), 8, FontWeight.w400),
                          SizedBox(
                            width: 10,
                          ),
                          myText(
                              "Liked", Color(0xffFFFFFF), 8, FontWeight.w400),
                          SizedBox(
                            width: 10,
                          ),
                          myText(
                              "Played", Color(0xffFFFFFF), 8, FontWeight.w400),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          myText("May 2023", Color(0xffFFFFFF), 9,
                              FontWeight.w400),
                          SizedBox(
                            width: 10,
                          ),
                          myText("Resident", Color(0xffFFFFFF), 9,
                              FontWeight.w400),
                          SizedBox(
                            width: 10,
                          ),
                          myText("250", Color(0xffFFFFFF), 9, FontWeight.w400),
                          SizedBox(
                            width: 10,
                          ),
                          myText("550", Color(0xffFFFFFF), 9, FontWeight.w400),
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/share.png"),
                    iconSize: 11,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/copy.png"),
                      iconSize: 11),
                  SizedBox(
                    width: 65,
                    height: 25,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xff363F87),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      child: const Text("Start"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget cardboxdata(value, text) {
  return Container(
    height: 76,
    width: 96,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15), color: Color(0xffE2E2E2)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        myText(value, Color(0xff4FB9D3), 18, FontWeight.w500),
        myText(text, Color(0xff666666), 9, FontWeight.w500)
      ],
    ),
  );
}

Widget bookmarkcard(String assets, title, desc, catgoryname, status, date) {
  return SizedBox(
    width: 335,
    // height: 96,
    child: Card(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.asset(assets),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    myText(title, Color(0xff363F87), 13, FontWeight.w600),
                    SizedBox(
                      width: 200,
                      child:
                          myText(desc, Color(0xff717171), 10, FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        myText(status, Color(0xff262626), 10, FontWeight.w400),
                        SizedBox(
                          width: 50,
                        ),
                        myText(date, Color(0xff262626), 10, FontWeight.w400),
                      ],
                    ),

                    //add
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    height: 26,
                    width: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xff6F7BD7),
                    ),
                    child: Center(
                        child: myText(catgoryname, const Color(0xffFFFFFF), 12,
                            FontWeight.w500))),
                Container(
                    height: 26,
                    width: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color.fromARGB(135, 26, 104, 117),
                    ),
                    child: Center(
                        child: myText(catgoryname, const Color(0xffFFFFFF), 12,
                            FontWeight.w500))),
                SizedBox(
                  width: 70,
                  height: 26,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xff363F87),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    child: const Text("View"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
