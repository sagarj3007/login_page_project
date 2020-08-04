import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    final logo = Hero(
      tag: 'hero',
        child: Container(
          width: 170,
          height: 207,
          child: Image.asset("assets/images/design_logo.png"),
        ),
    );

    final email = Container(
      width: 296.0,
      height: 52.0,
      child: TextFormField(
        style: TextStyle(color: Colors.black,fontSize: 16.0),
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Email Address',
        hintStyle: TextStyle(fontSize: 16.0),
        contentPadding: EdgeInsets.fromLTRB(21.0, 16.0, 125.0, 16.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(45.0)),
      ),
      )
    );

    final password = GestureDetector(
      onTap: (){

      },
      child:Container(
        width: 296.0,
        height: 52.0,
      child: TextFormField(
        style: TextStyle(color: Colors.black,fontSize: 16.0),
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        hintStyle: TextStyle(fontSize: 16.0),
        contentPadding: EdgeInsets.fromLTRB(21.0, 16.0, 125.0, 16.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(45.0)),
      ),
      )
    )
    );

    final loginButton = GestureDetector(
      onTap: (){

      },
      child: Container(
      width: 296.0,
      height: 56.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xffF48348),
            const Color(0xffF48348),
            const Color(0xffEF5A53),
          ],
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Container(
          width: 45.0,
          height: 21.0,
          child: Text("Login", style: TextStyle(color: Colors.white,fontSize: 16,))),
    )
    );

    final forgotPassword = GestureDetector(
      onTap: (){

      },
      child: Container(
        alignment: Alignment.center,
        width: 296.0,
        height: 16.0,
        child: Text("Forgot Password?",style: TextStyle(color: Colors.black,fontSize: 14.0),),
      )
    );

    final createAccount = GestureDetector(
        onTap: (){

        },
        child: Container(
          alignment: Alignment.center,
          width: 296.0,
          height: 20.0,
          child: Text("Create a new Account",style: TextStyle(color: Colors.black,fontSize: 16.0),),
        )
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 44.0, right: 35.0, top: 84.0,bottom: 192.0),
          children: <Widget>[
            logo,
            SizedBox(height: 45.0),
            email,
            SizedBox(height: 13.0),
            password,
            SizedBox(height: 13.0),
            loginButton,
            SizedBox(height: 13.0),
            forgotPassword,
            SizedBox(height: 49.0),
            createAccount,
          ],
        ),
      ),
    );
  }
}