import 'package:flutter/material.dart';
import 'package:flutter_crane/ui/appbar/appbar_view.dart';
import 'package:flutter_crane/ui/bottom_sheet/bottom_sheet_view.dart';
import 'package:flutter_crane/ui/home_middle/home_middle.dart';


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
      body: Stack(
        children: [
          Positioned.fill(
              child: HomeMiddle(),
          ),
          BottomSheetView(),
        ],
      ),
    );
  }
}
