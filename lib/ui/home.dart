import 'package:flutter/material.dart';
import 'package:flutter_crane/ui/appbar/appbar_view.dart';


class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(84, 27, 73, 1),
      appBar: AppbarView(),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
