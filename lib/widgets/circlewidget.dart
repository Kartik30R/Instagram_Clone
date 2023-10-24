import 'package:flutter/material.dart';

class Circlewidget extends StatelessWidget {
  const Circlewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:EdgeInsets.all(6),
      child:ClipOval(
        child: Image(
           height: 60,
          width: 60,
          image:AssetImage('assets/images/Instagram.png'),
          fit: BoxFit.cover,
         ),
      ) , );
  }
}