// import 'package:flutter/material.dart';

// class Gender {
//   String name;
//   IconData icon;
//   bool isSelected;

//   Gender(this.name, this.icon, this.isSelected);
// }


// class CustomRadio extends StatelessWidget {
//   Gender _gender;

//   CustomRadio(this._gender);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//         color: _gender.isSelected ? Color(0xFF3B4257) : Colors.white,
//         child: Container(
//           height: 80,
//           width: 80,
//           alignment: Alignment.center,
//           margin: new EdgeInsets.all(5.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               Icon(
//                 _gender.icon,
//                 color: _gender.isSelected ? Colors.white : Colors.grey,
//                 size: 40,
//               ),
//               SizedBox(height: 10),
//               Text(
//                 _gender.name,
//                 style: TextStyle(
//                     color: _gender.isSelected ? Colors.white : Colors.grey),
//               )
//             ],
//           ),
//         ));
//   }
// }


// class GenderSelector extends StatefulWidget {
//   @override
//   _GenderSelectorState createState() => _GenderSelectorState();
// }

// class _GenderSelectorState extends State<GenderSelector> {
//   List<Gender> genders = new List<Gender>();

//   @override
//   void initState() {
//     super.initState();
//     genders.add(new Gender("Male", MdiIcons.genderMale, false));
//     genders.add(new Gender("Female", MdiIcons.genderFemale, false));
//     genders.add(new Gender("Others", MdiIcons.genderTransgender, false));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         scrollDirection: Axis.horizontal,
//         shrinkWrap: true,
//         itemCount: genders.length,
//         itemBuilder: (context, index) {
//           return InkWell(
//             splashColor: Colors.pinkAccent,
//             onTap: () {
//               setState(() {
//                 genders.forEach((gender) => gender.isSelected = false);
//                 genders[index].isSelected = true;
//               });
//             },
//             child: CustomRadio(genders[index]),
//           );
//         });
//   }
// }