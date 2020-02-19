import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  theme: ThemeData(primaryColor: Color.fromRGBO(0, 200, 229, 1), accentColor: Color.fromRGBO(0, 200, 229, 1)),
  debugShowCheckedModeBanner: false,
  home: MainScreen(),
));

class MainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(image: AssetImage('images/newlogo.png'),
                width: 100,
                height: 100,
              ),
              Padding(padding: EdgeInsets.only(top: 20.0),),
              Text('DEVIGN TECH',
              style: TextStyle(
                letterSpacing: 1.5, fontWeight: FontWeight.bold, fontSize: 20.0, color: Color.fromRGBO(0, 200, 229, 1),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
