import 'package:flutter/material.dart';
import 'package:flutter_instagram/model/story.dart';
import 'package:flutter_instagram/utilities/constant.dart';
import 'package:flutter_instagram/widgets/story/story_tile.dart';

class StoryList extends StatelessWidget {

  final List<Story> _stories = [Story(imageName: "avatar.png", storyBorderColor: storyInactiveColor, username: "Your Story", isOwner: true ),
    Story(imageName: "cristiano.jpg", storyBorderColor: storyActiveColor, username: "cristiano", isOwner: false),
    Story(imageName: "vini.jpg", storyBorderColor: storyActiveColor, username: "vinijr", isOwner: false),
    Story(imageName: "nikelogo.jpg", storyBorderColor: storyActiveColor, username: "nike", isOwner: false ),
    Story(imageName: "avatar.png", storyBorderColor: storyActiveColor, username: "k.mbappe", isOwner: false),
    Story(imageName: "avatar.png", storyBorderColor: storyActiveColor, username: "leomessi", isOwner: false),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder: (context,index) {
      return StoryTile(story: _stories[index]);
    },
        separatorBuilder: (context, index) {
          return SizedBox(width: 5.0);
        },
        itemCount: this._stories.length,
        scrollDirection: Axis.horizontal
    );

  }
}// End of class


//   ListView.builder(itemBuilder: (context, index) {
//   return StoryTile(imageName: _stories[index].imageName,
//       storyBorderColor: _stories[index].storyBorderColor,
//       username: _stories[index].username);
// },
//   itemCount: this._stories.length,
//   scrollDirection: Axis.horizontal,
// );