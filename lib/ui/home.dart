import 'package:flutter/material.dart';
import 'package:flutter_crane/ui/appbar/appbar_view.dart';
import 'package:flutter_crane/ui/bottom_sheet/bottom_sheet_view.dart';
import 'package:flutter_crane/ui/home_middle/home_middle.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  final double bodyContentRatioParallax = .9;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(84, 27, 73, 1),
      // appBar: AppbarView(),
      body: Stack(
        children: [
          SizedBox.expand(
            child: Column(
              children: [
                Container(
                  child: AppbarView(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Container(
                    child: HomeMiddle(),
                  ),
                ),
              ],
            ),
          ),
          BottomSheetView(),
        ],
      ),
    );
  }
}
