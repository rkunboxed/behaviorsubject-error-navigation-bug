import 'package:flutter/material.dart';

import './utils/global_keys.dart';
import 'views/pages/home_page.dart';
import 'views/pages/cool_stuff_page.dart';

void main() {
  runApp(RyApp());
} 

class RyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RyApp();
  }
}

class _RyApp extends State<RyApp> with WidgetsBindingObserver {
  final navigatorKey = GlobalKeys.mainAppNavKey;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Test App',
      home: HomePage(),
      onGenerateRoute: CustomRoutes().getCustomRoutes,
    );
  }
}

class CustomRoutes {
  Route getCustomRoutes(RouteSettings settings) {
    switch(settings.name){
      case '/':
        return MaterialPageRoute( builder: (context) { return HomePage(); } );
      case '/cool-stuff':
        return MaterialPageRoute( builder: (context) { return CoolStuffPage2(); } );
      default:
        return MaterialPageRoute(
          builder: (context) {
            return HomePage();
          }
        );
    }
  }
}