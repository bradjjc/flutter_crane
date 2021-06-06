import 'package:flutter/material.dart';
import 'package:flutter_crane/location/location.dart';

class BottomSheetList extends StatelessWidget {
  final ScrollController controller;
  const BottomSheetList({Key key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: controller,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: [
        Text(
          'Explore Flights by Destination',
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
        ListTile(
          leading: Image(
            image: AssetImage('images/khumbu_valley.png'),
            fit: BoxFit.cover,
          ),
          title: Text(
            'Khumbu Valley, Nepal',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          subtitle: Text(
            'Nonstop - 5h 16m+',
            style: Theme.of(context).textTheme.bodyText2,
          ),
          minLeadingWidth: 100,
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LocationMap()));
          },
        ),
        Divider(
          thickness: 2,
        ),
        ListTile(
          leading: Image(
            image: AssetImage('khumbu_valley.png'),
          ),
          title: Text(
            'Khumbu Valley, Nepal',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          subtitle: Text(
            'Nonstop - 5h 16m+',
            style: Theme.of(context).textTheme.bodyText2,
          ),
          minLeadingWidth: 100,
        ),
        Divider(
          thickness: 2,
        ),
        ListTile(
          leading: Image(
            image: AssetImage('images/khumbu_valley3.jpeg'),
          ),
          title: Text(
            'Khumbu Valley, Nepal',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          subtitle: Text(
            'Nonstop - 5h 16m+',
            style: Theme.of(context).textTheme.bodyText2,
          ),
          minLeadingWidth: 100,
        ),
        Divider(
          thickness: 2,
        ),
        ListTile(
          leading: Image(
            image: AssetImage('images/khumbu_valley5.jpeg'),
          ),
          title: Text(
            'Khumbu Valley, Nepal',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          subtitle: Text(
            'Nonstop - 5h 16m+',
            style: Theme.of(context).textTheme.bodyText2,
          ),
          minLeadingWidth: 100,
        ),
        Divider(
          thickness: 2,
        ),
        ListTile(
          leading: Image(
            image: AssetImage('images/khumbu_valley7.jpeg'),
          ),
          title: Text(
            'Khumbu Valley, Nepal',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          subtitle: Text(
            'Nonstop - 5h 16m+',
            style: Theme.of(context).textTheme.bodyText2,
          ),
          minLeadingWidth: 100,
        ),
        Divider(
          thickness: 2,
        ),
        ListTile(
          leading: Image(
            image: AssetImage('images/khumbu_valley6.jpeg'),
          ),
          title: Text(
            'Khumbu Valley, Nepal',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          subtitle: Text(
            'Nonstop - 5h 16m+',
            style: Theme.of(context).textTheme.bodyText2,
          ),
          minLeadingWidth: 100,
        ),
        Divider(
          thickness: 2,
        ),
        ListTile(
          leading: Image(
            image: AssetImage('images/khumbu_valley7.jpeg'),
          ),
          title: Text(
            'Khumbu Valley, Nepal',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          subtitle: Text(
            'Nonstop - 5h 16m+',
            style: Theme.of(context).textTheme.bodyText2,
          ),
          minLeadingWidth: 100,
        ),
        Divider(
          thickness: 2,
        ),
        ListTile(
          leading: Image(
            image: AssetImage('images/khumbu_valley8.jpeg'),
          ),
          title: Text(
            'Khumbu Valley, Nepal',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          subtitle: Text(
            'Nonstop - 5h 16m+',
            style: Theme.of(context).textTheme.bodyText2,
          ),
          minLeadingWidth: 100,
        ),
        Divider(
          thickness: 2,
        ),
        ListTile(
          leading: Image(
            image: AssetImage('images/khumbu_valley9.jpeg'),
          ),
          title: Text(
            'Khumbu Valley, Nepal',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          subtitle: Text(
            'Nonstop - 5h 16m+',
            style: Theme.of(context).textTheme.bodyText2,
          ),
          minLeadingWidth: 100,
        ),
        Divider(
          thickness: 2,
        ),
        ListTile(
          leading: Image(
            image: AssetImage('images/khumbu_valley9.jpeg'),
          ),
          title: Text(
            'Khumbu Valley, Nepal',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          subtitle: Text(
            'Nonstop - 5h 16m+',
            style: Theme.of(context).textTheme.bodyText2,
          ),
          minLeadingWidth: 100,
        ),
        Divider(
          thickness: 2,
        ),
      ],
    );
  }
}
