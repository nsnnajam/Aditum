import 'package:aditum/widget/wigt.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PlayedCasecsecreen extends StatefulWidget {
  const PlayedCasecsecreen({super.key});

  @override
  State<PlayedCasecsecreen> createState() => _PlayedCasecsecreenState();
}

class _PlayedCasecsecreenState extends State<PlayedCasecsecreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: mylibrarycard("Dr. Alan Baker ", " Cornell University", "Gynecology",
                  "Menstrual bleeds"),
            ),
              
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: mylibrarycard("Dr. Alan Baker ", " Cornell University", "Gynecology",
                  "Menstrual bleeds"),
            ),
              
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: mylibrarycard("Dr. Alan Baker ", " Cornell University", "Gynecology",
                  "Menstrual bleeds"),
            ),
              
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: mylibrarycard("Dr. Alan Baker ", " Cornell University", "Gynecology",
                  "Menstrual bleeds"),
            ),
          ],
        ),
      ),
    );
  }
}
