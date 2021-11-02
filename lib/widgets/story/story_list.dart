import 'package:flutter/material.dart';
import 'package:flutter_instagram/model/story.dart';
import 'package:flutter_instagram/widgets/story/story_tile.dart';

class StoryList extends StatelessWidget {

  final List<Story> _stories;

  StoryList({stories}): this._stories = stories; //The part after : is called "initializer list. It is a ,-separated list of expressions that can access constructor parameters and can assign to instance fields, even final instance fields. This is handy to initialize final fields with calculated values.

  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder: (context,index) {
      return StoryTile(imageName: _stories[index].imageName,
          storyBorderColor: _stories[index].storyBorderColor,
          username: _stories[index].username);
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