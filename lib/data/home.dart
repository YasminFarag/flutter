import 'package:flutter/material.dart';



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('data Text'),
      centerTitle: true,
      //style: textStyle(),

      ),
      body : Center(
        child: Column(
          children: <Widget>[
            RaisedButton.icon(onPressed: () {
              Navigator.pushNamed(context, '/menu');
            },
              icon: Icon(
                  Icons.arrow_drop_down
              ),
              label: Text('Blood Image'),
              color: Colors.white70 ,
            ),
          ],
        ),
      ),
    );
  }
}
