// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DropdownDemo extends StatefulWidget {
  const DropdownDemo({Key? key}) : super(key: key);
  @override
  State<DropdownDemo> createState() => _DropdownDemoState();
}

class _DropdownDemoState extends State<DropdownDemo> {
  String dropdownValue = 'United States';
  String dropdownValue2 = 'Choose language';

  String dropdownValue3 = 'Preferred lab unit';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            // Text(
            //   'Selected Value: $dropdownValue',
            //   style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            // )
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
                      prefixIcon: Icon(Icons.flag),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              BorderSide(width: 3, color: Colors.blue))),
                  items: <String>['United States', 'USA', 'UAE', 'ETC']
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
                  value: dropdownValue2,
                  decoration: InputDecoration(
                      prefixIconColor: Color(0xff8994E9),
                      prefixIcon: Icon(Icons.language),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              BorderSide(width: 3, color: Colors.blue))),
                  items: <String>['Choose language', 'English', 'Urdu', 'Arabi']
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
                      dropdownValue2 = newValue!;
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
                  value: dropdownValue3,
                  decoration: InputDecoration(
                      prefixIconColor: Color(0xff8994E9),
                      prefixIcon: Image.asset(
                        "assets/lab.png",
                        height: 18,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              BorderSide(width: 3, color: Colors.blue))),
                  items: <String>['Preferred lab unit', 'Cat', 'Tiger', 'Lion']
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
                      dropdownValue3 = newValue!;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
