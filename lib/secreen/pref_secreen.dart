import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'dropdown.dart';

class PrefSecreen extends StatefulWidget {
  const PrefSecreen({super.key});

  @override
  State<PrefSecreen> createState() => _PrefSecreenState();
}

class _PrefSecreenState extends State<PrefSecreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            height: 302,
            width: 375,
            color: const Color(0xffE5E5E5),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child:
                      TextButton(onPressed: () {}, child: const Text("Skip")),
                ),
                Stack(
                  children: [
                    Image.asset("assets/Rectangle.png"),
                    Positioned.fill(
                      child: Image.asset("assets/Group.png"),
                    )
                  ],
                ),
                const SizedBox(
                  height: 48,
                ),
                const Text(
                  "please enter your Preferences",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text("This will help us tailor your cases",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),


              ],
            ),
          ),
          Expanded(child: DropdownDemo()),
          


        ],
      ),
    );
  }
}
