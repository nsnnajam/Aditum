import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../setting/settingpage.dart';
import 'notifications.dart';

class Notificationbtn extends StatefulWidget {
  const Notificationbtn({super.key});

  @override
  State<Notificationbtn> createState() => _NotificationbtnState();
}

class _NotificationbtnState extends State<Notificationbtn> {
  @override
  Widget build(BuildContext context) {
    return Row(
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
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => const NotificationsSecreen()),
              );
            },
            icon: const Icon(Icons.notifications)),
        IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Settingpage()),
              );

              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) =>
              //           const SettingTabbar()),
              // );
            },
            icon: const Icon(Icons.settings)),
      ],
    );
  }
}
