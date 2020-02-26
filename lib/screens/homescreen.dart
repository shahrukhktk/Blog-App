import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  theme: ThemeData(primaryColor: Color.fromRGBO(33, 162, 228, 1), accentColor: Color.fromRGBO(33, 162, 228, 1)),
  debugShowCheckedModeBanner: false,
  home: HomeScreen(),
));

class HomeScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        backgroundColor: Color.fromRGBO(33, 162, 228, 1),
      ),

    );
  }

}