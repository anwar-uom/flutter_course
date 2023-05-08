import 'package:flutter/material.dart';
import 'location_detail/location_detail.dart';
import 'locations/locations.dart';
import 'style.dart';

const LocationsRoute = '/';
const LocationDetailRoute = '/location_detail';

class App extends StatelessWidget{
  Widget build(context){
    return MaterialApp(
      onGenerateRoute: _routes(),
      home: Locations(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          titleTextStyle: AppBarTextStyle,
        ),
        textTheme: TextTheme(
          headlineLarge: HeadlineTextStyle,
          bodyLarge: BodyTextStyle,
        )
      ),
    );
  }
  RouteFactory _routes(){
    return (settings){
      final Map<String, dynamic> arguments = settings.arguments as Map<String, dynamic>;
      print(settings.arguments);
      print(arguments);
      Widget screen;
      switch(settings.name){
        case LocationsRoute:
          screen = Locations();
          break;
        case LocationDetailRoute:
          screen = LocationDetail(arguments['id']);
          break;
        default:
          return null;
      }
    };
  }
}