import 'package:curso_udemy10/widgets/my_appbar.dart';
import 'package:flutter/material.dart';

class ImagesPages extends StatefulWidget {
  static final routeName = 'images';
  @override
  _ImagesPagesState createState() => _ImagesPagesState();
}

class _ImagesPagesState extends State<ImagesPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            MyAppBar(
              leftIcon: 'assets/icons/flecha-izquierda.svg',
              onLeftClick: () => Navigator.pop(context),
              rightIcon: 'assets/icons/flecha-derecha.svg',
              onRightClick: () {},
            ),
            Expanded(
                child: Container(
              child: Center(
                child: Text('Images Pages'),
              ),
            ))
          ],
        ),
      )),
    );
  }
}
