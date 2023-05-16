import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../widget/wigt.dart';

class PrefrenceSecreen extends StatefulWidget {
  const PrefrenceSecreen({super.key});

  @override
  State<PrefrenceSecreen> createState() => _PrefrenceSecreenState();
}

class _PrefrenceSecreenState extends State<PrefrenceSecreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Card(
            child: ListTile(
                leading: const Icon(
                  Icons.notifications,
                  color: Color(0xff6B79E4),
                ),
                title: myText("Notifications", const Color(0xff6B79E4), 14,
                    FontWeight.w500),
                trailing: Image.asset("assets/rightarrow.png")),
          ),
          Card(
            child: ListTile(
                leading: const Icon(
                  Icons.location_city,
                  color: Color(0xff6B79E4),
                ),
                title: myText(
                    "Country", const Color(0xff6B79E4), 14, FontWeight.w500),
                trailing: Image.asset("assets/rightarrow.png")),
          ),
          Card(
            child: ListTile(
                leading: const Icon(
                  Icons.language,
                  color: Color(0xff6B79E4),
                ),
                title: myText(
                    "Language", const Color(0xff6B79E4), 14, FontWeight.w500),
                trailing: Image.asset("assets/rightarrow.png")),
          ),
          Card(
            child: ListTile(
                leading: const Icon(
                  Icons.note,
                  color: Color(0xff6B79E4),
                ),
                title: myText("Terms of Service", const Color(0xff6B79E4), 14,
                    FontWeight.w500),
                trailing: Image.asset("assets/rightarrow.png")),
          ),
          Card(
            child: ListTile(
                leading: const Icon(
                  Icons.contacts,
                  color: Color(0xff6B79E4),
                ),
                title: myText("Contact Support", const Color(0xff6B79E4), 14,
                    FontWeight.w500),
                trailing: Image.asset("assets/rightarrow.png")),
          ),
          Card(
            child: ListTile(
                leading: const Icon(
                  Icons.medication,
                  color: Color(0xff6B79E4),
                ),
                title: myText("Preferred Lab Unit", const Color(0xff6B79E4), 14,
                    FontWeight.w500),
                trailing: Image.asset("assets/rightarrow.png")),
          ),
        ],
      ),
    );
  }
}
