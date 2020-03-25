import 'package:flutter/material.dart';
import 'data/home.dart';
import 'data/menu.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',

      routes: {
    '/': (context) => Home(),
    '/menu': (context) => DropMenu(),
},
));



