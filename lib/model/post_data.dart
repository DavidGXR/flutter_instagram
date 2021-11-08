import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'post.dart';

class PostData extends ChangeNotifier {

  List<Post> _posts;

  PostData({List<Post> posts}):this._posts = posts;

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