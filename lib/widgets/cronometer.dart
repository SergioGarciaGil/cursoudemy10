import 'dart:async';

import 'package:curso_udemy10/widgets/circle_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cronometer extends StatefulWidget {
  final double initTime, fontSize;

  const Cronometer({Key key, this.initTime = 0, this.fontSize})
      : super(key: key);
  @override
  _CronometerState createState() => _CronometerState();
}

class _CronometerState extends State<Cronometer> {
  double _time;
  Timer _timer;

  @override
  void initState() {
    super.initState();
    _time = widget.initTime;
  }

  @override
  void dispose() {
    print('dipose456');
    super.dispose();
    _stop();
  }

  void _start() {
    _timer = Timer.periodic(
      Duration(seconds: 1),
      (Timer _) {
        setState(() {
          _time += 1;
        });
      },
    );
  }

  void _stop() {
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Text(
            _time.toString(),
            style: TextStyle(fontSize: widget.fontSize),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoButton(
                child: CircleContainer(child: Icon(Icons.play_arrow), size: 55),
                onPressed: _start,
              ),
              CupertinoButton(
                child: CircleContainer(child: Icon(Icons.stop), size: 55),
                onPressed: _stop,
              )
            ],
          )
        ],
      ),
    );
  }
}
