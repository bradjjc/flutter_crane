import 'package:flutter/material.dart';

class AppbarView extends StatefulWidget implements PreferredSizeWidget{
  final bool isTop;

  const AppbarView({Key key, this.isTop}) : super(key: key);

  @override
  _AppbarViewState createState() => _AppbarViewState();

  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}

class _AppbarViewState extends State<AppbarView> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 0),
      child: AppBar(
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Image(image: AssetImage('images/logo.png')),
        title: Container(
          height: 36,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  primary: Colors.white,
                  side: BorderSide(color: Colors.white, width: 2),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  textStyle: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onPressed: () {},
                child: Text('Fly'),
              ),
              Text(
                'Sleep',
                style: TextStyle(fontSize: 17, color: Color(0xFFdddddd)),
              ),
              Text(
                'Eat',
                style: TextStyle(fontSize: 17, color: Color(0xFFdddddd)),
              ),
            ],
          ),
        ),
      ),
    );
  }

}