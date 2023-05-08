import 'package:flutter/material.dart';
import '../app.dart';
import '../models/location.dart';

class Locations extends StatelessWidget{
  Widget build(context){
    final locations = Location.fetchall();
    return Scaffold(
      appBar: AppBar(title: Text('Locations'),),
      body: ListView(
        children: locations
        .map((location) => 
        GestureDetector(
          child: Text(location.name),
          onTap: ()=> _onLocationTap(context, location.id),
        )).toList(),
      ));
  }
  _onLocationTap(BuildContext context, int locationID){
    Navigator.pushNamed(context, LocationDetailRoute, arguments: {'id': locationID});
  }

}