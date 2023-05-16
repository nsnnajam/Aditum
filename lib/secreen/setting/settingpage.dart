// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'Preference.dart';
import 'editpersoninfo.dart';

class Settingpage extends StatefulWidget {
  const Settingpage({super.key});

  @override
  State<Settingpage> createState() => _SettingpageState();
}

class _SettingpageState extends State<Settingpage>
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
      backgroundColor: Color(0xffE5E5E5),
      body: SafeArea(
        child: Column(
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
            SizedBox(
              height: 20,
            ),
            TabBar(
              unselectedLabelColor: Color.fromARGB(255, 133, 131, 131),
              labelColor: Colors.black,
              tabs: const [
                Tab(
                  text: "Edit Personal Info",
                ),
                Tab(
                  text: "Preferences",
                )
              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  EditPersonalinfo(),
                  PrefrenceSecreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
