import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashPages extends StatefulWidget {
  SplashPages({Key key}) : super(key: key);

  @override
  _SplashPagesState createState() => _SplashPagesState();
}

class _SplashPagesState extends State<SplashPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CupertinoActivityIndicator(
          radius: 15,
        ),
      ),
    );
  }
}
