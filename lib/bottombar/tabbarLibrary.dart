// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:aditum/secreen/Home/mylibrary.dart';
import 'package:flutter/material.dart';

import '../secreen/Home/plyaedcases.dart';
import '../widget/wigt.dart';

class LibraryTabbar extends StatefulWidget {
  const LibraryTabbar({super.key});

  @override
  State<LibraryTabbar> createState() => _LibraryTabbarState();
}

class _LibraryTabbarState extends State<LibraryTabbar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
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
                        onPressed: () {},
                        icon: const Icon(Icons.notifications)),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.settings)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      myText("My Library", Colors.black, 16, FontWeight.bold),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.search))
                    ],
                  ),
                ),
              ],
            ),
            TabBar(
              unselectedLabelColor: Color.fromARGB(255, 133, 131, 131),
              labelColor: Colors.black,
              tabs: [
                Tab(
                  text: "Favorited Cases",
                ),
                Tab(
                  text: "Played Cases",
                )
              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [MylibrarySecreen(), PlayedCasecsecreen()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
