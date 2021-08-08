import 'package:flutter/material.dart';

class BagianIcon extends StatelessWidget {
  const BagianIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          IconTeks(iconData: Icons.camera, teksIcon: "Camera"),
          IconTeks(iconData: Icons.all_inbox, teksIcon: "Inbox"),
          IconTeks(iconData: Icons.call, teksIcon: "Call"),
        ],
      ),
    );
  }
}


class IconTeks extends StatelessWidget {
  late final IconData iconData;
  late final String teksIcon;
  IconTeks({required this.iconData, required this.teksIcon});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Column(
      children: [
        Icon(iconData,size: 20, color: Colors.blue, ),
        Text(teksIcon, style: TextStyle(fontSize: 12, color: Colors.black),)
      ],
    ));
  }
}
