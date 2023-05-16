// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:aditum/secreen/register.dart';
import 'package:aditum/secreen/sign_in.dart';
import 'package:flutter/material.dart';

class SignUpsecreen extends StatefulWidget {
  const SignUpsecreen({super.key});

  @override
  State<SignUpsecreen> createState() => _SignUpsecreenState();
}

class _SignUpsecreenState extends State<SignUpsecreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 71.5, left: 16),
              child: Container(
                // color: Colors.grey,
                height: 30,
                width: 208,
                child: const Text(
                  "Create Your Account",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: const Text(
                  "Enter yor inofrmation below or login with a social account",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Container(
              color: Color(0xFFFFFFFF),
            ),
            TabBar(
              unselectedLabelColor: Colors.black,
              labelColor: Color(0xff4FB9D3),
              tabs: [
                Tab(
                  // icon: Icon(Icons.people),
                  text: "Sign In",
                ),
                Tab(
                  // icon: Icon(Icons.person),
                  text: "Sign Up",
                )
              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [SignInsecreen(), Register()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
