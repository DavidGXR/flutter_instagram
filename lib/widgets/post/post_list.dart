import 'package:flutter/material.dart';
import 'package:flutter_instagram/model/post_data.dart';
import 'package:flutter_instagram/widgets/post/post_tile.dart';
import 'package:flutter_instagram/model/post.dart';
import 'package:provider/provider.dart';

class PostList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder: (context,index) {

      final List<Post> posts = Provider.of<PostData>(context).posts;

      return PostTile(post: posts[index]);
    },

      separatorBuilder: (context, index) {
        return SizedBox(height: 20.0);
      },
      itemCount: Provider.of<PostData>(context).postCount,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
    );
  }

}// End of class


