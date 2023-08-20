import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyColumnWidget extends StatelessWidget {
  final String cinsiyet;
  final IconData icon;
  MyColumnWidget({
    this.cinsiyet = 'kadın',
    this.icon = FontAwesomeIcons.addressCard,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 60,
          color: Colors.pink,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          cinsiyet,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
