import 'package:curso_udemy10/api/product_api.dart';
import 'package:curso_udemy10/models/Product.dart';
import 'package:curso_udemy10/widgets/my_appbar.dart';
import 'package:flutter/material.dart';

class ChatPages extends StatefulWidget {
  static final routName = 'Chat';
  final String userName;
  ChatPages({Key key, @required this.userName}) : super(key: key);

  @override
  _ChatPagesState createState() => _ChatPagesState();
}

class _ChatPagesState extends State<ChatPages> {
  var rest = ProductApi();
  List<Product> listTodo = null;
  @override
  void initState() {
    super.initState();
    _load();
  }

  _load() async {
    listTodo = await rest.fetchProducts();
  }

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
                child: ListView.builder(
                    itemCount: listTodo.length,
                    itemBuilder: (_, int index) {
                      Product item = listTodo[index];
                      return ListTile(
                        title: Text(item.title),
                        trailing: Text(item.completed == true ? "Sí" : "No"),
                      );
                    }),
              ),
            ))
          ],
        ),
      )),
    );
  }
}
