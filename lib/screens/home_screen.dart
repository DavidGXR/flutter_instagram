import 'package:flutter/material.dart';
import 'package:flutter_instagram/model/story.dart';
import 'package:flutter_instagram/utilities/constant.dart';
import 'package:flutter_instagram/widgets/story_list.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {

  final List<Story> _stories = [Story(imageName: "avatar.png", storyBorderColor: storyInactiveColor, username: "Your Story"),
    Story(imageName: "cristiano.jpg", storyBorderColor: storyActiveColor, username: "cristiano"),
    Story(imageName: "vini.jpg", storyBorderColor: storyActiveColor, username: "vinijr"),
    Story(imageName: "nikelogo.jpg", storyBorderColor: storyActiveColor, username: "nike"),
    Story(imageName: "avatar.png", storyBorderColor: storyActiveColor, username: "k.mbappe"),
    Story(imageName: "avatar.png", storyBorderColor: storyActiveColor, username: "leomessi")
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
            'Instagram',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Billabong',
            fontSize: 37.0,
            fontWeight: FontWeight.w500
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
              Icons.camera_alt_outlined,
            color: Colors.black,
            size: 27.0,
          ),
          onPressed: () {

          },
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              FontAwesomeIcons.paperPlane,
              color: Colors.black,
              size: 23.0,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            child: Padding(
              padding: EdgeInsets.only(left: 5.0, top: 5.0),
                child: StoryList(stories: this._stories)),
            height: 100,
          ),
        ],
      ),
    );
  }

}



//Color(0xFFE1306C)