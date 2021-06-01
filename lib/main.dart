import 'package:flutter/material.dart';
import 'package:flutter_crane/model/crane_provider.dart';
import 'package:flutter_crane/ui/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<CraneProvider>(create: (_) => CraneProvider()),
        ],
        child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      )
    );
  }
}
