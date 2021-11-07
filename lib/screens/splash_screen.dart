import 'package:flutter/material.dart';
import 'package:flutter_instagram/model/post.dart';
import 'package:flutter_instagram/model/post_data.dart';
import 'package:flutter_instagram/networking/post_manager.dart';
import 'package:flutter_instagram/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    navigateToHome();
  }

  void navigateToHome() async {
    var posts = await getPostData();
    await Future.delayed(Duration(milliseconds: 1500));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeScreen(posts: posts)));
  }

  Future<List<Post>> getPostData() async {
    List<Post> posts = [];
    var postManager = PostManager();
    var postData = await postManager.getPosts();

    for (int i = 0; i<10; i++) {
      String profileImageName = postData['data'][i]['owner']['picture'];
      String username = '${postData['data'][i]['owner']['firstName']} ${postData['data'][0]['owner']['lastName']}';
      String location = 'New York, USA';
      String postImageName = postData['data'][i]['image'];
      int totalLike = postData['data'][i]['likes'];
      String postCaption = postData['data'][i]['text'];
      int totalComment = 79;

      Post post = Post(profileImageName: profileImageName, username: username, location: location, postImageName: postImageName,
      totalLikes: totalLike, postCaption: postCaption, totalComment: totalComment, didLike: false, didReact: false);
      posts.add(post);

    }

    return posts;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text(
            'Instagram',
            style: TextStyle(
              fontFamily: 'Billabong',
              fontSize: 70.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}


