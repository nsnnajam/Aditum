import 'package:flutter/material.dart';

import '../../widget/wigt.dart';
import 'alphabatscrool.dart';

class BookmarksSecreen extends StatefulWidget {
  const BookmarksSecreen({super.key});

  @override
  State<BookmarksSecreen> createState() => _BookmarksSecreenState();
}

class _BookmarksSecreenState extends State<BookmarksSecreen> {
  bool isselected = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
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
                    onPressed: () {}, icon: const Icon(Icons.notifications)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  myText("Bookmarks", Colors.black, 16, FontWeight.bold),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search))
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        if (isselected == false) {
                          isselected = true;
                        } else {
                          isselected = false;
                        }
                      });
                    },
                    style: TextButton.styleFrom(
                      primary: isselected == true
                          ? Colors.black
                          : Color(0xff666666), // Text Color
                    ),
                    child: const Text("All"),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        if (isselected == false) {
                          isselected = true;
                        } else {
                          isselected = false;
                        }
                      });
                    },
                    style: TextButton.styleFrom(
                      primary: isselected == true
                          ? Colors.black
                          : Color(0xff666666), // Text Color
                    ),
                    child: const Text("Teaching Note"),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        if (isselected == false) {
                          isselected = true;
                        } else {
                          isselected = false;
                        }
                      });
                    },
                    style: TextButton.styleFrom(
                      primary: isselected == true
                          ? Colors.black
                          : Color(0xff666666), // Text Color
                    ),
                    child: const Text("Landmark Article"),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        if (isselected == false) {
                          isselected = true;
                        } else {
                          isselected = false;
                        }
                      });
                    },
                    style: TextButton.styleFrom(
                      primary: isselected == true
                          ? Colors.black
                          : Color(0xff666666), // Text Color
                    ),
                    child: const Text("Guidelines"),
                  ),
                ],
              ),
            ),
            const Divider(),
            Row(
              children: [
                TextButton(onPressed: () {}, child: const Text("All")),
                TextButton(onPressed: () {}, child: const Text("Cardiology")),
                TextButton(onPressed: () {}, child: const Text("Nurology")),
                TextButton(onPressed: () {}, child: const Text("Immunology")),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return bookmarkcard(
                      "assets/image29.png",
                      "Initial Management of Asthma",
                      "The latest guidelines from GINA in 2021 suggested that LABA/ICS prn was the first...",
                      "Respirology",
                      "A room full of air",
                      "Apr 25, 2021");
                },
              ),
            )

          ],
        ),
      ),
    );
  }
}
