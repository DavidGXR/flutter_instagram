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
      body: Padding(
        padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(

              // Story
              child: Container(
                child: StoryList(stories: this._stories)
              )
            ),

            Padding(
              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
              child: SizedBox(
                height: 5.0,
                child: Divider(
                  color: Colors.grey,
                ),
              ),
            ),

            // Feeds
            Expanded(
                child: Container(
                  child: ListView.builder(itemBuilder: (context, builder) {
                    return Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.red
                      ),

                    );
                  },
                    itemCount: 5,
                    scrollDirection: Axis.vertical,
                  ),
                ),
              flex: 6,
            ),


          ],
        ),
      )
    );
  }

}



//Color(0xFFE1306C)