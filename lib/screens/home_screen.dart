import 'package:flutter/material.dart';
import 'package:flutter_instagram/model/post.dart';
import 'package:flutter_instagram/model/post_data.dart';
import 'package:flutter_instagram/model/story_data.dart';
import 'package:flutter_instagram/utilities/constant.dart';
import 'package:flutter_instagram/widgets/post/post_list.dart';
import 'package:flutter_instagram/widgets/story/story_list.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {

  final List<Post> _posts;

  HomeScreen({List<Post> posts}):this._posts = posts;

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
          // Story
          SizedBox(
            child: Padding(
                padding: EdgeInsets.only(left: universalLeftPadding, top: 10.0),
                child: ChangeNotifierProvider<StoryData>(
                  create: (context) => StoryData(),
                  child: StoryList(),
                )
            ),
            height: 105,
          ),

          // Horizontal gray line
          Padding(
            padding: const EdgeInsets.only(top: 5.0, bottom: 10.0),
            child: SizedBox(
              height: 3.0,
              child: Divider(
                color: Colors.grey,
                indent: 7.0,
              ),
            ),
          ),

          // Feeds
          ChangeNotifierProvider(
              create: (context) => PostData(posts: this._posts),
              child: PostList()
          )
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.search),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.plusSquare),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.heart),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
            label: 'Chats',
          ),
        ],
      ),
    );
  }

}




