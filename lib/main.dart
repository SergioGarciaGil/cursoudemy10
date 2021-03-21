import 'package:curso_udemy10/pages/chat_pages.dart';
import 'package:curso_udemy10/pages/home_page.dart';
import 'package:curso_udemy10/pages/images_pages.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return MaterialApp(
      home: HomePage(),
      routes: {
        ImagesPages.routeName: (BuildContext context) => ImagesPages(),
        ChatPages.routName: (BuildContext context) => ChatPages(
              userName: 'Hola sergio',
            )
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
