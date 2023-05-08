import 'package:flutter/material.dart';

class TextSection extends StatelessWidget{
  final String _title;
  final String _body;
  static const double _hpad = 16.0;
  TextSection(this._title, this._body);
  Widget build(context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(_hpad, 32.0, _hpad, 4.0),
          child: Text(_title, style: Theme.of(context).textTheme.headlineLarge,),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(_hpad, 16.0, _hpad, 4.0),
          child: Text(_body, style: Theme.of(context).textTheme.bodyLarge,),
        ),
      ],
    );
  }
}