import 'package:flutter/material.dart';
import 'package:login/widgets/circlewidget.dart';

class storyWidget extends StatelessWidget {
  final String username;
  const storyWidget({super.key,required this.username});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: const EdgeInsets.all(8),
        child: Stack(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.pink,width: 3)
              ),
            ),
            const Circlewidget()
          ],
        ),),
        Text(username,style: TextStyle(fontSize: 13,color: Colors.grey.shade500),)
      ],
    );
  }
}