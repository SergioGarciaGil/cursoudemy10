import 'package:curso_udemy10/widgets/circle_container.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: Stack(
        children: [
          SvgPicture.asset('assets/icons/user1.svg'),
          Positioned(
            child: CircleContainer(
              child: Icon(Icons.edit),
              size: 60,
            ),
            right: 0,
            top: 0,
          )
        ],
      ),
    );
  }
}
