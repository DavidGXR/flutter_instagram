import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
    );
  }
}
