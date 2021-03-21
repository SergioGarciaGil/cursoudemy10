import 'package:curso_udemy10/pages/chat_pages.dart';
import 'package:curso_udemy10/pages/images_pages.dart';
import 'package:curso_udemy10/widgets/avatar.dart';
import 'package:curso_udemy10/widgets/botton_menu.dart';
import 'package:curso_udemy10/widgets/cronometer.dart';
import 'package:curso_udemy10/widgets/my_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final routName = 'home';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottonMenu(
        items: [
          BottonMenuItem(iconPad: 'assets/icons/home.svg', label: 'Inicio'),
          BottonMenuItem(
              iconPad: 'assets/icons/history.svg', label: 'Historial'),
          BottonMenuItem(iconPad: 'assets/icons/precio.svg', label: 'Ofertas'),
          BottonMenuItem(iconPad: 'assets/icons/menu.svg', label: 'Más'),
        ],
      ),
      body: SafeArea(
        child: Container(
            width: double.infinity,
            child: Column(
              //appbar
              children: [
                MyAppBar(
                  leftIcon: 'assets/icons/camara.svg',
                  onLeftClick: () {
                    Navigator.pushNamed(context, ImagesPages.routeName);
                  },
                  rightIcon: 'assets/icons/mensajes.svg',
                  onRightClick: () {
                    Navigator.pushNamed(context, ChatPages.routName);
                  },
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Avatar(),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Bienvenido'),
                      Text('Sergio Garcia',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 30,
                      ),
                      _isEnabled == true
                          ? Cronometer(
                              initTime: 90,
                              fontSize: 50,
                            )
                          : Container(),
                      CupertinoButton(
                          color: Colors.blue,
                          child: Text('Eneable: $_isEnabled'),
                          onPressed: () {
                            setState(() {
                              _isEnabled = !_isEnabled;
                            });
                          }),
                      SizedBox(
                        height: 10,
                      ),
                      CupertinoButton(
                          color: Colors.green,
                          child: Text('Go to Chat'),
                          onPressed: () {}),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
