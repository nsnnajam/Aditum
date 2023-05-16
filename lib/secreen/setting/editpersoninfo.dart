import 'package:aditum/widget/wigt.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class EditPersonalinfo extends StatefulWidget {
  const EditPersonalinfo({super.key});

  @override
  State<EditPersonalinfo> createState() => _EditPersonalinfoState();
}

class _EditPersonalinfoState extends State<EditPersonalinfo> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final formkey = GlobalKey<FormState>();
  String dropdownValue1 = 'Health Care Professional';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.person,
                              color: Color(0xff6B79E4),
                            ),
                            myText("First Name", const Color(0xff6B79E4), 14,
                                FontWeight.w500),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          color: const Color(0xffF5F7FF),
                          child: TextFormField(
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
                            controller: nameController,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              // prefixIcon: Icon(Icons.person),
                              prefixIconColor: Color(0xff8994E9),
                              border: OutlineInputBorder(),
                              // labelText: 'First Name',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.person,
                              color: Color(0xff6B79E4),
                            ),
                            myText("Last Name", const Color(0xff6B79E4), 14,
                                FontWeight.w500),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          color: const Color(0xffF5F7FF),
                          child: TextFormField(
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
                            controller: nameController,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              // prefixIcon: Icon(Icons.person),
                              prefixIconColor: Color(0xff8994E9),
                              border: OutlineInputBorder(),
                              // labelText: 'Last Name',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.date_range_outlined,
                              color: Color(0xff6B79E4),
                            ),
                            myText("Date of Birth", const Color(0xff6B79E4), 14,
                                FontWeight.w500),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          color: const Color(0xffF5F7FF),
                          child: TextFormField(
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
                            controller: nameController,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              // prefixIcon: Icon(Icons.person),
                              prefixIconColor: Color(0xff8994E9),
                              border: OutlineInputBorder(),
                              // labelText: 'Last Name',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.email,
                              color: Color(0xff6B79E4),
                            ),
                            myText("Email", const Color(0xff6B79E4), 14,
                                FontWeight.w500),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          color: const Color(0xffF5F7FF),
                          child: TextFormField(
                            controller: emailController,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              // prefixIcon: Icon(Icons.email),
                              prefixIconColor: Color(0xff8994E9),
                              border: OutlineInputBorder(),
                              // labelText: 'Email',
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
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.lock,
                              color: Color(0xff6B79E4),
                            ),
                            myText("Password", const Color(0xff6B79E4), 14,
                                FontWeight.w500),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          color: const Color(0xffF5F7FF),
                          child: TextFormField(
                            obscureText: true,
                            controller: passwordController,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              suffixIcon: Icon(Icons.remove_red_eye),
                              // prefixIcon: Icon(Icons.lock),
                              prefixIconColor: Color(0xff8994E9),
                              border: OutlineInputBorder(),
                              // labelText: 'Password',
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
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.lock,
                              color: Color(0xff6B79E4),
                            ),
                            myText("Confrim Password", const Color(0xff6B79E4),
                                14, FontWeight.w500),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          color: const Color(0xffF5F7FF),
                          child: TextFormField(
                            obscureText: true,
                            controller: passwordController,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              suffixIcon: Icon(Icons.remove_red_eye),
                              // prefixIcon: Icon(Icons.lock),
                              prefixIconColor: Color(0xff8994E9),
                              border: OutlineInputBorder(),
                              // labelText: 'Password',
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
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset("assets/healthcare.png"),
                            myText("Status Affiliation",
                                const Color(0xff6B79E4), 14, FontWeight.w500),
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
                            value: dropdownValue1,
                            decoration: InputDecoration(
                                prefixIconColor: Color(0xff8994E9),
                                prefixIcon:
                                    Image.asset("assets/healthcare.png"),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                        width: 3, color: Colors.blue))),
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
                    ],
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.cast_for_education,
                              color: Color(0xff6B79E4),
                            ),
                            myText("University Afiiliation",
                                const Color(0xff6B79E4), 14, FontWeight.w500),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          color: const Color(0xffF5F7FF),
                          child: TextFormField(
                            // controller: passwordController,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              // prefixIcon: Icon(Icons.lock),
                              prefixIconColor: Color(0xff8994E9),
                              border: OutlineInputBorder(),
                              labelText: 'Enter Universty Name',
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
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 170,
                  child: ElevatedButton(
                    onPressed: () async {
                      if (formkey.currentState!.validate()) {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //   builder: (context) => HomeScreen(),
                        // ));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff4FB9D3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text(
                      "Log Out",
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
