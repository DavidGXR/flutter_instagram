import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'post.dart';
import 'package:flutter_instagram/utilities/constant.dart';

class PostData extends ChangeNotifier {

  final List<Post> _posts = [
    Post(profileImageName: 'cristiano.jpg', username: 'cristiano', location: 'Atlanta, Italy', postImageName: 'nikelogo.jpg', totalLikes: 5, postCaption: 'Nike has been one of the greatest brand for me since I first started playing football.', totalComment: 3, didLike: false, didReact: false),
    Post(profileImageName: 'vini.jpg', username: 'vinijr', location: 'Madrid, Spain', postImageName: 'nikelogo.jpg', totalLikes: 5, postCaption: 'Best brand ever.', totalComment: 168, didLike: false, didReact: false),
    Post(profileImageName: 'nikelogo.jpg', username: 'nike', location: 'New York, US', postImageName: 'nikelogo.jpg', totalLikes: 5, postCaption: 'Unleash your potential.', totalComment: 168, didLike: false, didReact: false),
  ];

  UnmodifiableListView<Post> get posts {
    return UnmodifiableListView(this._posts);
  }

  int get postCount {
    return this._posts.length;
  }

  void didDoubleTapOnPost(Post post) {
    if (post.didLike == false) {
      post.toggleLike();
      post.didReact = true;
    } else {
      post.toggleUnlike();
      post.didReact = false;
    }
    notifyListeners();
    Future.delayed(Duration(seconds: 1), (){
      post.didReact = false;
      notifyListeners();
    });
  }


}// End of class