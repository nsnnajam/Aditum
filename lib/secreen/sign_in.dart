import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'getstarted/getstarted.dart';

class SignInsecreen extends StatefulWidget {
  const SignInsecreen({super.key});

  @override
  State<SignInsecreen> createState() => _SignInsecreenState();
}

class _SignInsecreenState extends State<SignInsecreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  // FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      body: Padding(
        padding: mediaQueryData.viewInsets,
        child: SingleChildScrollView(
          reverse: true,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    color: const Color(0xffF5F7FF),
                    child: TextFormField(
                      autofocus: true,
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
                          return "Email Required";
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
                        "Sign In",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
