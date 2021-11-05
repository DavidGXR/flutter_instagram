import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'story.dart';
import 'package:flutter_instagram/utilities/constant.dart';

class StoryData extends ChangeNotifier {

  final List<Story> _stories = [Story(imageName: "avatar.png", storyBorderColor: storyInactiveColor, username: "Your Story", isOwner: true ),
    Story(imageName: "cristiano.jpg", storyBorderColor: storyActiveColor, username: "cristiano", isOwner: false),
    Story(imageName: "vini.jpg", storyBorderColor: storyActiveColor, username: "vinijr", isOwner: false),
    Story(imageName: "nikelogo.jpg", storyBorderColor: storyActiveColor, username: "nike", isOwner: false ),
    Story(imageName: "avatar.png", storyBorderColor: storyActiveColor, username: "k.mbappe", isOwner: false),
    Story(imageName: "avatar.png", storyBorderColor: storyActiveColor, username: "leomessi", isOwner: false),
  ];

  UnmodifiableListView<Story> get stories {
    return UnmodifiableListView(this._stories);
  }

  int get storyCount {
    return this._stories.length;
  }


}// End of class