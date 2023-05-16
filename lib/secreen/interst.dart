import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class InterestSecreen extends StatefulWidget {
  const InterestSecreen({super.key});

  @override
  State<InterestSecreen> createState() => _InterestSecreenState();
}

class _InterestSecreenState extends State<InterestSecreen> {
  String dropdownValue = 'Student';
  bool isAppleChecked = false;
  bool isBananaChecked = false;
  bool isCherryChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              width: 375,
              color: const Color(0xffE5E5E5),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child:
                        TextButton(onPressed: () {}, child: const Text("Skip")),
                  ),
                  // Stack(
                  //   children: [
                  //     Image.asset("assets/Rectangle.png"),
                  //     Positioned.fill(
                  //       child: Image.asset("assets/affi.png"),
                  //     )
                  //   ],
                  // ),
                  const SizedBox(
                    height: 28,
                  ),
                  const Text(
                    "What are  your Interest?",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text("This will help us tailor your cases",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                ],
              ),
            ),
            CheckboxListTile(
              secondary: Icon(Icons.medical_services),
              title: const Text('Cardiology'),
              value: isAppleChecked,
              onChanged: (bool? value) {
                setState(() {
                  isAppleChecked = value!;
                });
              },
            ),
            CheckboxListTile(
              secondary: Icon(Icons.medical_services),
              title: const Text('Nurology'),
              value: isBananaChecked,
              onChanged: (bool? value) {
                setState(() {
                  isBananaChecked = value!;
                });
              },
            ),
            CheckboxListTile(
              secondary: const Icon(Icons.medical_services),
              title: const Text('Ortho'),
              value: isBananaChecked,
              onChanged: (bool? value) {
                setState(() {
                  isBananaChecked = value!;
                });
              },
            ),
            CheckboxListTile(
              secondary: const Icon(Icons.medical_services),
              title: const Text('General Surgery'),
              value: isBananaChecked,
              onChanged: (bool? value) {
                setState(() {
                  isBananaChecked = value!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
