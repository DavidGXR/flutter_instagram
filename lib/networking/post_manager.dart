import 'package:flutter_instagram/utilities/constant.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;


class PostManager {

  // Map<String, String> _requestHeaders = {
  //   'Content-type': 'application/json',
  //   'Accept': 'application/json',
  //   'Authorization': '<Your token>'
  // };

  Map<String, String> _requestHeaders = {
    'app-id': dummyAppID
  };

  Future getPosts() async {
    final route = 'https://dummyapi.io/data/v1/post?limit=10';
    final Uri url = Uri.parse(route);
    var response = await http.get(url, headers: this._requestHeaders);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      return jsonResponse;
    } else {
      return ;
    }

  }

}// End of class