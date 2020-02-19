import 'package:flutter/material.dart';
import 'package:flutter_project_application/screens/main.dart';

void main() => runApp(new MaterialApp(
  theme: ThemeData(primaryColor: Color.fromRGBO(33, 162, 228, 1), accentColor: Color.fromRGBO(33, 162, 228, 1)),
  debugShowCheckedModeBanner: false,
  home: LoginScreen(),
));

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(33, 162, 228, 1),
      body: ListView(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Text('SIGN IN', style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20.0, letterSpacing: 5.0 , color: Color.fromRGBO(0, 200, 229, 1),
            ),
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
            child: TextField(
              decoration: InputDecoration(
                hintMaxLines: 4,
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                prefixIcon: Icon(Icons.email),fillColor: Colors.white,
                hintText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
//                    boxShadow: BoxShadow(color: Color.fromRGBO(0, 200, 229, 1),
//                    blurRadius: 20.0,
//                        offset: Offset(0, 10),),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      prefixIcon: Icon(Icons.lock_open),fillColor: Colors.white,
                      hintText: "Password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30,),
          Padding(padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromRGBO(0, 200, 229, 1),
              ),
              child: FlatButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainScreen()),
                  );
                },
                child: Center(
                  child: Text('Login', style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.white, letterSpacing: 1.5
                  ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Padding(padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
              child: Center(
                child: FlatButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainScreen()),
                    );
//                  Fluttertoast.showToast(
////                        msg: "Create new account",
////                        toastLength: Toast.LENGTH_SHORT,
////                        gravity: ToastGravity.CENTER,
////                        timeInSecForIos: 1,
////                        textColor: Colors.black,
////                        backgroundColor: Colors.transparent,
////                  );
                  },
                  child: Text('Create new account', style: TextStyle(color: Color.fromRGBO(0, 200, 229, 1)),),
                ),
              )
          ),
        ],
      ),
    );
  }
}