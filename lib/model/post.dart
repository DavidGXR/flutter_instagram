class Post {
  String profileImageName;
  String username;
  String location;
  String postImageName;
  int totalLikes;
  String postCaption;
  int totalComment;
  bool didLike;
  bool didReact;


  Post({this.profileImageName, this.username, this.location, this.postImageName,
      this.totalLikes, this.postCaption, this.totalComment, this.didLike, this.didReact});

  void toggleLike() {
    this.didLike = !didLike;
    this.totalLikes += 1;
  }

  void toggleUnlike() {
    this.didLike = !didLike;
    this.totalLikes -= 1;
  }

}// End of class