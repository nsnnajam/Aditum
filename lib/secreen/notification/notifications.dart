import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../widget/wigt.dart';

class NotificationsSecreen extends StatefulWidget {
  const NotificationsSecreen({super.key});

  @override
  State<NotificationsSecreen> createState() => _NotificationsSecreenState();
}

class _NotificationsSecreenState extends State<NotificationsSecreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 150,
                ),
                Image.asset("assets/hometop.png"),
                const SizedBox(
                  width: 60,
                ),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.notifications)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
              ],
            ),
            myText("Notifications", Colors.black, 16, FontWeight.bold),
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
                    Icons.notifications,
                    color: Color(0xff6B79E4),
                  ),
                  title: myText("Notifications", const Color(0xff6B79E4), 14,
                      FontWeight.w500),
                  trailing: Image.asset("assets/rightarrow.png")),
            ),
          ],
        ),
      ),
    );
  }
}
