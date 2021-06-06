import 'package:flutter/material.dart';
import 'package:date_range_form_field/date_range_form_field.dart';

class HomeMiddle extends StatefulWidget {
  const HomeMiddle({Key key}) : super(key: key);

  @override
  _HomeMiddleState createState() => _HomeMiddleState();
}

GlobalKey<FormState> myFormKey = new GlobalKey();

class _HomeMiddleState extends State<HomeMiddle> {
  DateTimeRange myDateRange;

  // void _submitForm() {
  //   final FormState form = myFormKey.currentState;
  //   form.save();
  // }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 8),
              width: MediaQuery.of(context).size.width * 0.9,
              color: Color(0xFF6d185e),
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 30,
                ),
                horizontalTitleGap: 0,
                title: Text(
                  '1 Adult, Economy',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 8),
              width: MediaQuery.of(context).size.width * 0.9,
              color: Color(0xFF6d185e),
              child: ListTile(
                leading: Icon(
                  Icons.location_on,
                  color: Colors.white,
                  size: 30,
                ),
                horizontalTitleGap: 0,
                title: Text(
                  'Seoul, South Korea',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 8),
              width: MediaQuery.of(context).size.width * 0.9,
              color: Color(0xFF6d185e),
              child: ListTile(
                leading: Icon(
                  Icons.airplanemode_active,
                  color: Color(0xFFF7D4F1),
                  size: 30,
                ),
                horizontalTitleGap: 0,
                title: Text(
                  'Choose Destination',
                  style: TextStyle(fontSize: 18, color: Color(0xFFF7D4F1)),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 8),
              width: MediaQuery.of(context).size.width * 0.9,
              color: Color(0xFF6d185e),
              child: SafeArea(
                child: Form(
                  key: myFormKey,
                  child: SafeArea(
                    child: DateRangeField(
                        margin: EdgeInsets.fromLTRB(8, 0, 20, 8),
                        width: MediaQuery.of(context).size.width * 0.9,
                        firstDate: DateTime(1990),
                        enabled: true,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                          prefixIcon: Icon(
                            Icons.date_range,
                            color: Colors.white,
                            size: 30,
                          ),
                          hintText: 'Please select a start and end date',
                        ),
                        validator: (value) {
                          if (value.start.isBefore(DateTime.now())) {
                            return 'Please enter a later start date';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          setState(() {
                            myDateRange = value;
                          });
                        }),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
