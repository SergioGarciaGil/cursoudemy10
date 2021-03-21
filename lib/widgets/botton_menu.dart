import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottonMenuItem {
  final String iconPad, label;

  BottonMenuItem({this.iconPad, this.label});
}

class BottonMenu extends StatelessWidget {
  final List<BottonMenuItem> items;

  const BottonMenu({@required this.items})
      : assert(items != null && items.length > 0);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.white,
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(items.length, (index) {
            final BottonMenuItem item = items[index];
            return Expanded(
                child: Container(
              child: CupertinoButton(
                  padding: EdgeInsets.zero,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        item.iconPad,
                        width: 35,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        item.label,
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                    ],
                  ),
                  onPressed: () {}),
            ));
          }),
        ),
      ),
    );
  }
}
