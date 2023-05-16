// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'dropdown.dart';

class Affilationsecreen extends StatefulWidget {
  Affilationsecreen({super.key});

  @override
  State<Affilationsecreen> createState() => _AffilationsecreenState();
}

class _AffilationsecreenState extends State<Affilationsecreen> {
  String dropdownValue = 'Student';
  String dropdownValue1 = 'Health Care Professional';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
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
                        child: Image.asset("assets/affi.png"),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  const Text(
                    "please enter your Affilation",
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xffF5F7FF), //<-- SEE HERE
                    borderRadius: BorderRadius.circular(12)),
                child: DropdownButtonFormField(
                  focusColor: Colors.blue,
                  value: dropdownValue,
                  decoration: InputDecoration(
                      prefixIconColor: Color(0xff8994E9),
                      prefixIcon: Image.asset("assets/degree.png"),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              BorderSide(width: 3, color: Colors.blue))),
                  items: <String>['Student', 'USA', 'UAE', 'ETC']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(fontSize: 20),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xffF5F7FF), //<-- SEE HERE
                    borderRadius: BorderRadius.circular(12)),
                child: DropdownButtonFormField(
                  focusColor: Colors.blue,
                  value: dropdownValue1,
                  decoration: InputDecoration(
                      prefixIconColor: Color(0xff8994E9),
                      prefixIcon: Image.asset("assets/healthcare.png"),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              BorderSide(width: 3, color: Colors.blue))),
                  items: <String>[
                    'Health Care Professional',
                    'Medical Doctor',
                    'Medical resident',
                    'ETC'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(fontSize: 20),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue1 = newValue!;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            //universty name
            Container(
              height: 55,
              width: 345,
              decoration: BoxDecoration(
                  color: Color(0xffF5F7FF), //<-- SEE HERE
                  borderRadius: BorderRadius.circular(15)),
              child: TextFormField(
                validator: (val) {
                  if (val!.isEmpty || val.startsWith(RegExp(r'[ ]'))) {
                    return "field required";
                  } else {
                    if (val.contains(RegExp(r'[^A-Za-z0-9 ]'))) {
                      return "invalid data enter";
                    } else {
                      if (val.length < 4) {
                        return "length is short";
                      }
                    }
                  }
                  return null;
                },
                // controller: nameController,
                decoration: InputDecoration(
                  prefixIcon: Image.asset("assets/degree.png"),
                  prefixIconColor: Color(0xff8994E9),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  labelText: 'Enter Universty name',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
