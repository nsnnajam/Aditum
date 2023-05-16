// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:aditum/secreen/getstarted/customradioa.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Baiscinfo extends StatefulWidget {
  const Baiscinfo({super.key});

  @override
  State<Baiscinfo> createState() => _BaiscinfoState();
}

class _BaiscinfoState extends State<Baiscinfo> {
  @override
  Widget build(BuildContext context) {
    bool checkbox = false;
    final MediaQueryData mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: mediaQueryData.viewInsets,
          child: SingleChildScrollView(
            reverse: true,
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
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
                        child: TextButton(
                            onPressed: () {}, child: const Text("Skip")),
                      ),
                      Stack(
                        children: [
                          Image.asset("assets/Rectangle.png"),
                          Positioned.fill(
                            child: Image.asset("assets/Letter.png"),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 48,
                      ),
                      const Text(
                        "please enter your baisc information",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text("This will help us tailor your cases",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400))
                    ],
                  ),
                ),
                Container(
                  height: 370,
                  width: 375,
                  color: const Color(0xffFFFFFF),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 45,
                        width: 335,
                        color: const Color(0xffF5F7FF),
                        child: TextFormField(
                          scrollPadding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          autofocus: true,
                          validator: (val) {
                            if (val!.isEmpty ||
                                val.startsWith(RegExp(r'[ ]'))) {
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
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            prefixIconColor: Color(0xff8994E9),
                            border: OutlineInputBorder(),
                            labelText: 'Enter custom username',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Checkbox(
                              shape: const CircleBorder(),
                              value: checkbox,
                              onChanged: (value) {
                                setState(() {
                                  checkbox = true;
                                });
                              },
                            ),
                            const Text('User name'),
                            Checkbox(
                              shape: const CircleBorder(),
                              value: checkbox,
                              onChanged: (value) {
                                setState(() {
                                  checkbox = true;
                                });
                              },
                            ),
                            const Text("use full name"),
                          ],
                        ),
                      ),
                      Container(
                        //date birth
                        height: 45,
                        width: 335,
                        color: const Color(0xffF5F7FF),
                        child: TextFormField(
                          scrollPadding: EdgeInsets.symmetric(
                              vertical:
                                  MediaQuery.of(context).viewInsets.bottom),
                          validator: (val) {
                            if (val!.isEmpty ||
                                val.startsWith(RegExp(r'[ ]'))) {
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
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.date_range),
                            prefixIconColor: Color(0xff8994E9),
                            border: OutlineInputBorder(),
                            labelText: 'Enter Date of birth',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          height: 80, child: Expanded(child: CustomRadio())),
                      const SizedBox(
                        height: 70,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
