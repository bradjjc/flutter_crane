import 'package:flutter/material.dart';

class HomeMiddle extends StatefulWidget {
  const HomeMiddle({Key key}) : super(key: key);

  @override
  _HomeMiddleState createState() => _HomeMiddleState();
}

class _HomeMiddleState extends State<HomeMiddle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextFormField(),
          TextFormField(),
        ],
      ),
    );
  }
}
