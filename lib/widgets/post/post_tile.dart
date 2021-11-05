import 'package:flutter/material.dart';
import 'package:flutter_instagram/model/post.dart';
import 'package:flutter_instagram/utilities/constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostTile extends StatelessWidget {

  final Post post;
  final Function didDoubleTapOnPost;

  PostTile({this.post, this.didDoubleTapOnPost});

  double commentOpacity() {
    if (post.totalComment != 0) {
      return 1;
    } else {
      return 0;
    }
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,

      children: [
        // User account section
        Padding(
          padding: const EdgeInsets.only(left: universalLeftPadding),
          // Account info
          child: Container(
            height: 33.0,
            width: double.infinity,
            child: Row(

              mainAxisSize: MainAxisSize.min,

              children: [

                GestureDetector(
                  onTap: () {
                    print("Profile pic tapped..!");
                  },
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('images/${post.profileImageName}'),
                  ),
                ),

                SizedBox(
                  width: 5.0,
                ),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      GestureDetector(
                        onTap: () {
                          print("username tapped..");
                        },
                        child: Text(
                          post.username,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13.0,
                              color: Colors.black
                          ),
                        ),
                      ),

                      SizedBox(height: 5.0),

                      GestureDetector(
                        onTap: () {
                          print('location tapped...');
                        },
                        child: Text(
                          post.location,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 11.0
                          ),
                        ),
                      )

                    ],
                  ),
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
        ),

        SizedBox(height: 10.0),

        // Post's image
        GestureDetector(
          onDoubleTap: () {
            //TODO: Update didLike = true and show heart icon for 2 seconds
            didDoubleTapOnPost(post);
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image(
                image: AssetImage('images/${post.postImageName}'),
                height: MediaQuery.of(context).size.height-450,
                fit: BoxFit.fitHeight,
              ),
              Opacity(
                opacity: post.didReact? 1:0,
                child: SizedBox(
                  width: 80,
                  height: 80,
                  child: Icon(
                    FontAwesomeIcons.solidHeart,
                    color: Colors.white,
                    size: 80,
                  ),
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 10.0),

        // Buttons
        Padding(
          padding: const EdgeInsets.only(left: universalLeftPadding),
          child: Row(
            children: [
              SizedBox(
                height: 20.0,
                width: 20.0,
                child: TextButton(
                  child: Icon(
                    post.didLike ? FontAwesomeIcons.solidHeart:FontAwesomeIcons.heart,
                    color: post.didLike ? Colors.pink:Colors.black,
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
          padding: const EdgeInsets.only(left: universalLeftPadding),
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
                '${post.totalLikes.toString()} likes',
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
          padding: const EdgeInsets.only(left: universalLeftPadding),
          child: SizedBox(
            width: double.infinity,
            child: RichText(
              text: TextSpan(
                  children: [
                    TextSpan(
                      text: post.username,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),

                    TextSpan(
                      text: '  ${post.postCaption}',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal
                      ),
                    ),

                  ]
              ),
            ),

          ),
        ),

        SizedBox(height: 10.0),

        Padding(
          padding: const EdgeInsets.only(left: universalLeftPadding),
          child: SizedBox(
            height: 13.0,
            child: Opacity(
              opacity: commentOpacity(),
              child: TextButton(
                child: Text(
                  'View all ${post.totalComment} comments',
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
        ),

      ],
    );
  }
}
