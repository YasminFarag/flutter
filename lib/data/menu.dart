import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class DropMenu extends StatefulWidget {
  @override
  _DropMenuState createState() => _DropMenuState();

}

class _DropMenuState extends State<DropMenu> {
  void getBooks() async {

    var url = 'https://www.googleapis.com/books/v1/volumes?q={http}';
    var response = await http.get(url);
      if(response.statusCode == 200) {
        var jsonResponse = convert.jsonDecode(response.body);

          print('Number of books $jsonResponse');
      }else{
        print('failed ${response.statusCode}');
      }
  }
  @override
  // called once the the widget is created , subscribe to any object that could change the widget data
  void initState() {
    super.initState();
    getBooks();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[500],
      appBar: AppBar(
          backgroundColor: Colors.grey[700],
          title: Text('Blood Result'),
          centerTitle: true,
        elevation: 0,
      ),

    );
  }
}
