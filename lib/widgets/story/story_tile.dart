import 'package:flutter/material.dart';

class StoryTile extends StatelessWidget {

  final String imageName;
  final Color storyBorderColor;
  final String username;

  StoryTile({this.imageName, this.storyBorderColor, this.username});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            width: 80,
            height: 100,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    color: storyBorderColor,
                    width: 1.5
                )
            ),
            child: Center(
              child: CircleAvatar(
                radius: 34,
                backgroundImage: AssetImage('images/$imageName'),
              ),
            ),
          ),
        ),

        Text(
          username,
          style: TextStyle(
              color: Colors.grey,
              fontSize: 13.0
          ),
        )
      ],
    );
  }
}