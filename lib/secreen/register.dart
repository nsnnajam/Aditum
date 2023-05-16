// ignore_for_file: sized_box_for_whitespace

import 'package:aditum/secreen/getstarted/basicinfo.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'getstarted/getstarted.dart';

class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  // FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: const Color(0xffF5F7FF),
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
                    controller: nameController,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      prefixIcon: Icon(Icons.person),
                      prefixIconColor: Color(0xff8994E9),
                      border: OutlineInputBorder(),
                      labelText: 'First Name',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  color: const Color(0xffF5F7FF),
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
                    controller: nameController,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      prefixIcon: Icon(Icons.person),
                      prefixIconColor: Color(0xff8994E9),
                      border: OutlineInputBorder(),
                      labelText: 'Last Name',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  color: const Color(0xffF5F7FF),
                  child: TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      prefixIcon: Icon(Icons.email),
                      prefixIconColor: Color(0xff8994E9),
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Required";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  color: const Color(0xffF5F7FF),
                  child: TextFormField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      prefixIcon: Icon(Icons.lock),
                      prefixIconColor: Color(0xff8994E9),
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                    validator: (val) {
                      if (val!.length < 6) {
                        return "Enter more then 6 number";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  color: const Color(0xffF5F7FF),
                  child: TextFormField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      prefixIcon: Icon(Icons.lock),
                      prefixIconColor: Color(0xff8994E9),
                      border: OutlineInputBorder(),
                      labelText: 'Again Password',
                    ),
                    validator: (val) {
                      if (val!.length < 6) {
                        return "Enter more then 6 number";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 130),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/Iconfb.png")),
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/Vector.png")),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  height: 40,
                  width: 170,
                  child: ElevatedButton(
                    onPressed: () async {
                      if (formkey.currentState!.validate()) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff4FB9D3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text(
                      "Sign Up",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
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
