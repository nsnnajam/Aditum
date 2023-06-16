// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:aditum/bottombar/tabbarLibrary.dart';
import 'package:aditum/secreen/Home/Home_page.dart';
import 'package:flutter/material.dart';

import '../api/dumyjasomapi.dart';
import '../secreen/Home/bookmarks.dart';
import '../secreen/Home/explore_secreen.dart';
import '../secreen/Home/mylibrary.dart';
import '../secreen/Home/profile_secreen.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({Key? key}) : super(key: key);

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    ExploreSecreen(),
    LibraryTabbar(),
    HomePagesecreen(),
    BookmarksSecreen(),
    // ProfileSecreen(),
    LastExampleScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: Drawer(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 50,
                  child: Image.asset("assets/Group.png")),
              Text(
                "Najam ur Rehman",
                style: TextStyle(
                    color: const Color(0xFF1E356B),
                    fontWeight: FontWeight.bold),
              ),
              ListTile(
                title: Text(
                  "Hasan",
                  style: TextStyle(
                      color: const Color(0xFF1E356B),
                      fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                title: Text(
                  "Zeshan",
                  style: TextStyle(
                      color: const Color(0xFF1E356B),
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 350,
              ),
              Container(
                height: 51,
                width: 347,
                child: ElevatedButton(
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => HomeSecreen()));
                    },
                    child: const Text("commancer"),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          //t
                          borderRadius: BorderRadius.circular(10)),
                      primary: const Color(0xFFEF6E2D),
                    )),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_books),
              label: 'My Library',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              label: 'Bookmarks',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          unselectedItemColor: Color(0xffBDBDBD),
          selectedItemColor: Color(0xff6B79E4),
          backgroundColor: Color(0xFFFFFFFF),
          type: BottomNavigationBarType.fixed,

          // fixedColor: Colors.amber,
          onTap: _onItemTapped,
        ),
        body: _widgetOptions.elementAt(_selectedIndex)
        // SafeArea(
        //   child: SingleChildScrollView(
        //     child: Column(
        //       children: [
        //         Center(child: Image.asset("assets/appbar.png")),
        //         Center(
        //           child: _widgetOptions.elementAt(_selectedIndex),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        );
  }
}
