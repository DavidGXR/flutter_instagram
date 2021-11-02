import 'package:flutter/material.dart';
import 'package:flutter_instagram/model/story.dart';
import 'package:flutter_instagram/utilities/constant.dart';
import 'package:flutter_instagram/widgets/story/story_list.dart';
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

          Padding(
            padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
            child: SizedBox(
              height: 3.0,
              child: Divider(
                color: Colors.grey,
                indent: 7.0,
              ),
            ),
          ),

          // Feeds
          ListView.separated(itemBuilder: (context,index) {
            return Container(
              height: MediaQuery.of(context).size.height-290,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: [
                  // User account section
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            print("Profile pic tapped..!");
                          },
                          child: CircleAvatar(
                            radius: 17,
                            backgroundImage: AssetImage('images/cristiano.jpg'),
                          ),
                        ),

                        SizedBox(
                          width: 5.0,
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            SizedBox(
                              height: 20.0,
                              child: TextButton(
                                onPressed: () {  },
                                style: TextButton.styleFrom(
                                    minimumSize: Size(20.0, 20.0),
                                    padding: EdgeInsets.zero,
                                ),
                                child: Text(
                                  'cristiano',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13.0,
                                    color: Colors.black
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 20.0,
                              child: TextButton(
                                onPressed: () {  },

                                style: TextButton.styleFrom(
                                    minimumSize: Size(20.0, 20.0),
                                    padding: EdgeInsets.zero
                                ),

                                child: Text(
                                  'Manchester, United Kingdom',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 11.0
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),

                        Spacer(),

                        SizedBox(
                          height: 15.0,
                          width: 25.0,
                          child: TextButton(
                            child: Icon(
                              FontAwesomeIcons.ellipsisH,
                              color: Colors.black,
                              size: 15.0,
                            ),
                            style: TextButton.styleFrom(
                                minimumSize: Size(15.0, 15.0),
                                padding: EdgeInsets.only(right: 10.0)
                            ),

                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 5.0),

                  // Post's image
                  Image(
                    image: AssetImage('images/nikelogo.jpg'),
                    height: MediaQuery.of(context).size.height-450,
                    fit: BoxFit.fitHeight,
                  ),

                  SizedBox(height: 5.0),

                  // Buttons
                  Padding(
                    padding: const EdgeInsets.only(left: 7.0),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 20.0,
                          width: 20.0,
                          child: TextButton(
                            child: Icon(
                              FontAwesomeIcons.heart,
                              color: Colors.black,
                              size: 20.0,
                            ),
                            style: TextButton.styleFrom(
                              minimumSize: Size(20.0, 20.0),
                              padding: EdgeInsets.zero
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 10.0,
                        ),

                        SizedBox(
                          height: 20.0,
                          width: 20.0,
                          child: TextButton(
                            child: Icon(
                              FontAwesomeIcons.comment,
                              color: Colors.black,
                              size: 20.0,
                            ),
                            style: TextButton.styleFrom(
                                minimumSize: Size(20.0, 20.0),
                                padding: EdgeInsets.zero
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 10.0,
                        ),

                        SizedBox(
                          height: 20.0,
                          width: 20.0,
                          child: TextButton(
                            child: Icon(
                              FontAwesomeIcons.paperPlane,
                              color: Colors.black,
                              size: 20.0,
                            ),
                            style: TextButton.styleFrom(
                                minimumSize: Size(20.0, 20.0),
                                padding: EdgeInsets.zero
                            ),
                          ),
                        ),

                        Spacer(),

                        SizedBox(
                          height: 20.0,
                          width: 30.0,
                          child: TextButton(
                            child: Icon(
                              FontAwesomeIcons.bookmark,
                              color: Colors.black,
                              size: 20.0,
                            ),
                            style: TextButton.styleFrom(
                                minimumSize: Size(20.0, 20.0),
                                padding: EdgeInsets.only(right: 10.0)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 10.0),

                  // Number of likes
                  Padding(
                    padding: const EdgeInsets.only(left: 7.0),
                    child: SizedBox(
                      height: 15.0,
                      child: TextButton(
                        onPressed: () {  },
                        style: TextButton.styleFrom(
                          minimumSize: Size(15.0, 15.0),
                          padding: EdgeInsets.zero,
                          alignment: Alignment.centerLeft
                        ),
                        child: Text(
                          '5 likes',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                              color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 10.0,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 7.0),
                    child: SizedBox(
                      height: 13.0,
                      child: Row(
                        children: [
                          TextButton(
                            child: Text(
                              'cristiano',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            style: TextButton.styleFrom(
                                minimumSize: Size(13.0, 13.0),
                                padding: EdgeInsets.zero,
                                alignment: Alignment.centerLeft
                            ),
                          ),

                          SizedBox(width: 7.0),

                          Text(
                            'Best brand ever.',
                            style: TextStyle(
                              fontSize: 13.0
                            ),
                          )

                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 10.0),

                  Padding(
                    padding: const EdgeInsets.only(left: 7.0),
                    child: SizedBox(
                      height: 13.0,
                      child: TextButton(
                        child: Text(
                          'View all 3 comments',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13.0,
                          ),
                        ),
                        style: TextButton.styleFrom(
                            minimumSize: Size(13.0, 13.0),
                            padding: EdgeInsets.zero,
                            alignment: Alignment.centerLeft
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            );
          },
            separatorBuilder: (context, index) {
              return SizedBox(height: 5.0);
            },
            itemCount: 5,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
          )
        ],
      ),
    );
  }

}



