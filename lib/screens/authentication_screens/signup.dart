import 'package:flutter/material.dart';
import 'package:flutter_project_application/screens/authentication_screens/signin.dart';
import 'package:flutter_project_application/screens/main.dart';

void main() => runApp(new MaterialApp(
  theme: ThemeData(primaryColor: Color.fromRGBO(33, 162, 228, 1), accentColor: Color.fromRGBO(33, 162, 228, 1)),
  debugShowCheckedModeBanner: false,
  home: SignUpScreen(),
));

class SignUpScreen extends StatelessWidget {

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Center(
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 50.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('SIGN UP', style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20.0, letterSpacing: 5.0 , color: Color.fromRGBO(33, 162, 228, 1),
                    ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.fromLTRB(20.0, 100.0, 20.0, 20.0),
                  child: TextFormField(
                    controller: controller,
                    decoration: InputDecoration(
                      hintMaxLines: 4,
                      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      prefixIcon: Icon(Icons.person),fillColor: Colors.white,
                      labelText: 'Username',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(20.0),
                  child: TextFormField(
                    controller: controller,
                    decoration: InputDecoration(
                      hintMaxLines: 4,
                      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      prefixIcon: Icon(Icons.email),fillColor: Colors.white,
                      labelText: 'Email',
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
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                            prefixIcon: Icon(Icons.lock_open),fillColor: Colors.white,
                            labelText: 'password',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Padding(padding: EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [Color.fromRGBO(11, 76, 140, 1), Color.fromRGBO(33, 162, 228, 1),],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color.fromRGBO(0, 200, 229, 1),
                    ),
                    child: FlatButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen()),
                        );
                      },
                      child: Center(
                        child: Text('REGISTER', style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.white, letterSpacing: 1.5
                        ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Padding(padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
                    child: Center(
                      child: FlatButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginScreen()),
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
                        child: Text('Already have an account', style: TextStyle(color: Color.fromRGBO(33, 162, 228, 1), fontSize: 15.0,
                          ),
                        ),
                      ),
                    )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}