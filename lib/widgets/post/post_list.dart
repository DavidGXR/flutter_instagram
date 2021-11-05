import 'package:flutter/material.dart';
import 'package:flutter_instagram/widgets/post/post_tile.dart';
import 'package:flutter_instagram/model/post.dart';

class PostList extends StatefulWidget {

  @override
  _PostListState createState() => _PostListState();
}

class _PostListState extends State<PostList> {

  List<Post> _posts = [
    Post(profileImageName: 'cristiano.jpg', username: 'cristiano', location: 'Atlanta, Italy', postImageName: 'nikelogo.jpg', totalLikes: 5, postCaption: 'Nike has been one of the greatest brand for me since I first started playing football.', totalComment: 3, didLike: false, didReact: false),
    Post(profileImageName: 'vini.jpg', username: 'vinijr', location: 'Madrid, Spain', postImageName: 'nikelogo.jpg', totalLikes: 5, postCaption: 'Best brand ever.', totalComment: 168, didLike: false, didReact: false),
    Post(profileImageName: 'nikelogo.jpg', username: 'nike', location: 'New York, US', postImageName: 'nikelogo.jpg', totalLikes: 5, postCaption: 'Unleash your potential.', totalComment: 168, didLike: false, didReact: false),
  ];

  void didDoubleTapOnPost(Post post) {
    if (post.didLike == false) {
      post.toggleLike();
      post.didReact = true;
    } else {
      post.toggleUnlike();
      post.didReact = false;
    }
    setState(() {});
    Future.delayed(Duration(seconds: 1), (){
      post.didReact = false;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder: (context,index) {
      return PostTile(post: this._posts[index], didDoubleTapOnPost: this.didDoubleTapOnPost);
    },

      separatorBuilder: (context, index) {
        return SizedBox(height: 20.0);
      },
      itemCount: this._posts.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
    );
  }
}

