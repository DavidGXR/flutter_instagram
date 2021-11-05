import 'package:flutter/material.dart';
import 'package:flutter_instagram/model/story.dart';
import 'package:flutter_instagram/model/story_data.dart';
import 'package:flutter_instagram/utilities/constant.dart';
import 'package:flutter_instagram/widgets/story/story_tile.dart';
import 'package:provider/provider.dart';

class StoryList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder: (context,index) {
      return StoryTile(story: Provider.of<StoryData>(context).stories[index]);
    },
        separatorBuilder: (context, index) {
          return SizedBox(width: 5.0);
        },
        itemCount: Provider.of<StoryData>(context).storyCount,
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