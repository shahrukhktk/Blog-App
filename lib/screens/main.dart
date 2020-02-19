import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  theme: ThemeData(primaryColor: Color.fromRGBO(33, 162, 228, 1), accentColor: Color.fromRGBO(33, 162, 228, 1)),
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
                width: 130,
                height: 130,
              ),
              Padding(padding: EdgeInsets.only(top: 20.0),),
              Text('DEVIGN TECH',
              style: TextStyle(
                letterSpacing: 1.5, fontWeight: FontWeight.bold, fontSize: 20.0, color: Color.fromRGBO(33, 162, 228, 1),
              ),
              ),
              SizedBox(height: 30,),
              Padding(padding: EdgeInsets.fromLTRB(20.0, 100.0, 20.0, 0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color.fromRGBO(33, 162, 228, 1),
                  ),
                  child: FlatButton(
                    onPressed: (){
//                      Navigator.push(
//                        context,
//                        MaterialPageRoute(builder: (context) => SignUpScreen()),
//                      );
                    },
                    child: Center(
                      child: Text('GET STARTED', style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.white, letterSpacing: 1.5
                      ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
