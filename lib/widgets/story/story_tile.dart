import 'package:flutter/material.dart';
import 'package:flutter_instagram/model/story.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StoryTile extends StatelessWidget {

  final Story story;

  StoryTile({this.story});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Container(
                width: 80,
                height: 95,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: story.storyBorderColor,
                        width: 1.5,
                        style: story.isOwner ? BorderStyle.none:BorderStyle.solid
                    )
                ),
                child: Center(
                  child: CircleAvatar(
                    radius: 33,
                    backgroundImage: AssetImage('images/${story.imageName}'),
                  ),
                ),
              ),

              Positioned(child:
                Opacity(
                  opacity: story.isOwner? 1:0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2.5
                      )
                    ),
                    child: Icon(
                      FontAwesomeIcons.plusCircle,
                      color: Colors.blue,
                    ),
                  ),
                ),
                bottom: 0,
                right: 0,
              )



            ],
          ),
        ),

        Text(
          story.username,
          style: TextStyle(
              color: Colors.grey,
              fontSize: 13.0
          ),
        )
      ],
    );
  }
}