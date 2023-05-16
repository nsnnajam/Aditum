import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../widget/wigt.dart';

class ExploreSecreen extends StatefulWidget {
  const ExploreSecreen({super.key});

  @override
  State<ExploreSecreen> createState() => _ExploreSecreenState();
}

class _ExploreSecreenState extends State<ExploreSecreen> {
  bool vertical = false;
  final List<bool> _selectedWeather = <bool>[
    false,
    false,
    false,
    true,
  ];

  List<Widget> icons = <Widget>[
    const Icon(
      Icons.sunny,
      size: 10,
    ),
    const Icon(Icons.cloud, size: 10),
    const Icon(Icons.ac_unit, size: 10),
    const Icon(Icons.ac_unit, size: 10),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 150,
                      ),
                      Image.asset("assets/hometop.png"),
                      const SizedBox(
                        width: 60,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.notifications)),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.settings)),
                    ],
                  ),
                  //explore case
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      myText(
                          "Explore cases", Colors.black, 18, FontWeight.bold),
                      // SizedBox(
                      //   height: 32,
                      //   width: 135,
                      //   child: ToggleButtons(
                      //     direction: vertical ? Axis.vertical : Axis.horizontal,
                      //     onPressed: (int index) {
                      //       setState(() {
                      //         // The button that is tapped is set to true, and the others to false.
                      //         for (int i = 0;
                      //             i < _selectedWeather.length;
                      //             i++) {
                      //           _selectedWeather[i] = i == index;
                      //         }
                      //       });
                      //     },
                      //     borderRadius:
                      //         const BorderRadius.all(Radius.circular(15)),
                      //     selectedBorderColor: Colors.blue[700],
                      //     selectedColor: Colors.white,
                      //     fillColor: Colors.blue[200],
                      //     color: Colors.blue[400],
                      //     isSelected: _selectedWeather,
                      //     children: icons,
                      //   ),
                      // ),
                      Container(
                        width: 139,
                        height: 32,
                        decoration: BoxDecoration(
                            color: const Color(0xffC5CBF5),
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              constraints: BoxConstraints.tight(
                                  const Size.fromWidth(40)),
                              onPressed: () {},
                              icon: Image.asset("assets/Group6.png"),
                              iconSize: 8,
                            ),
                            IconButton(
                              constraints: BoxConstraints.tight(
                                  const Size.fromWidth(30)),
                              onPressed: () {},
                              icon: Image.asset("assets/Group3.png"),
                              iconSize: 8,
                            ),
                            IconButton(
                              constraints: BoxConstraints.tight(
                                  const Size.fromWidth(30)),
                              onPressed: () {},
                              icon: Image.asset("assets/Group4.png"),
                              iconSize: 10,
                            ),
                            IconButton(
                              constraints: BoxConstraints.tight(
                                  const Size.fromWidth(30)),
                              onPressed: () {},
                              icon: Image.asset("assets/Group5.png"),
                              iconSize: 8,
                            ),
                          ],
                        ),
                      ),

                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.search)),
                    ],
                  ),
                  Row(
                    children: [
                      TextButton(onPressed: () {}, child: const Text("All")),
                      TextButton(
                          onPressed: () {}, child: const Text("Cardiology")),
                      TextButton(
                          onPressed: () {}, child: const Text("Nurology")),
                      TextButton(
                          onPressed: () {}, child: const Text("Immunology")),
                    ],
                  ),
                  //any
                  Container(
                    color: const Color(0xff6B79E4),
                    height: 34,
                    width: 375,
                    child: Row(
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Any user Type",
                              style: TextStyle(color: Colors.white),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "User",
                              style: TextStyle(color: Colors.white),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "insituition",
                              style: TextStyle(color: Colors.white),
                            )),
                      ],
                    ),
                  ),

                  Container(
                    color: const Color(0xff5A67C8),
                    height: 34,
                    width: 375,
                    child: Row(
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Any case length",
                              style: TextStyle(color: Colors.white),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "short",
                              style: TextStyle(color: Colors.white),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Standard",
                              style: TextStyle(color: Colors.white),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Complex",
                              style: TextStyle(color: Colors.white),
                            )),
                      ],
                    ),
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
