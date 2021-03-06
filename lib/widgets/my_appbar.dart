import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyAppBar extends StatelessWidget {
  final String leftIcon, rightIcon;
  final VoidCallback onLeftClick, onRightClick;
  const MyAppBar(
      {Key key,
      @required this.leftIcon,
      @required this.rightIcon,
      this.onLeftClick,
      this.onRightClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CupertinoButton(
            padding: EdgeInsets.all(15),
            child: SvgPicture.asset(
              leftIcon,
              width: 30,
            ),
            onPressed: onLeftClick,
          ),
          Text(
            'LOGO',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          CupertinoButton(
              onPressed: onRightClick,
              padding: EdgeInsets.all(0),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: SvgPicture.asset(
                      rightIcon,
                      width: 30,
                    ),
                  ),
                  Positioned(
                      right: 12,
                      top: 12,
                      child: Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                      ))
                ],
              )),
        ],
      ),
    );
  }
}
