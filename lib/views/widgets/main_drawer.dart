import 'package:flutter/material.dart';
import '../../utils/custom_colors.dart';

class RyDrawerTilePrimary {
  String title;
  IconData icon;
  String route;

  RyDrawerTilePrimary(this.title, this.icon, this.route);
}

List<RyDrawerTilePrimary> _listOfPrimaryTiles = <RyDrawerTilePrimary>[
  RyDrawerTilePrimary('Home', Icons.home, '/'),
  RyDrawerTilePrimary('Cool Stuff', Icons.assignment, '/cool-stuff')
];

class RyMainDrawer extends StatefulWidget {

  @override
  RyMainDrawerState createState() {
    return new RyMainDrawerState();
  }
}

class RyMainDrawerState extends State<RyMainDrawer> {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: <Widget>[
        RyDrawerPrimaryTiles(),
      ])
    );
  }
}

class RyDrawerPrimaryTiles extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<RyDrawerTilePrimary> primaryTiles = _listOfPrimaryTiles;
    
    List<Widget> _drawerItems = <Widget>[];
    _drawerItems.add(SizedBox(height: 20.0));

    for (var i = 0; i < primaryTiles.length; i++) {
      _drawerItems.add(
        GestureDetector(
          onTap: () { Navigator.of(context, rootNavigator: true).popAndPushNamed(primaryTiles[i].route); },
          child: Row(children: <Widget>[
            Container(
              height: 48.0,
              width: 54.0,
              margin: EdgeInsets.only(left: 5.0),
              child: Icon(primaryTiles[i].icon,)
            ),
            Expanded(
              child: Container(
                height: 48.0,
                padding: EdgeInsets.only(top: 17.0),
                child: Text(primaryTiles[i].title, style: TextStyle(fontSize: 16.0))
              )
            )
          ])
        )
      );
    }

    return Column(children: _drawerItems);
  }
}