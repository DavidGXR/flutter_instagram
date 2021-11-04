import 'package:flutter/material.dart';
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
    await Future.delayed(Duration(seconds: 5));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
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


