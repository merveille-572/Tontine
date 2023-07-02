import 'package:flutter/material.dart';

import 'Accueil.dart';
import 'login.dart';


class register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _header(context),
              _inputField(context),
              //_forgotPassword(context),
              _signIn(context),
            ],
          ),
        ),
      ),
    );
  }
}

_header(context) {
  return Column(
    children: [
      Text(
        "Sign up Here ",
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      ),
      Text("Enter your credential to login"),
    ],
  );
}

_inputField(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      TextField(
        decoration: InputDecoration(
          hintText: "nom",
          border: OutlineInputBorder(
             borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
          fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
          filled: true,
          prefixIcon: Icon(Icons.person),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      TextField(
        decoration: InputDecoration(
          hintText: "email",
          border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
          fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
          filled: true,
          prefixIcon: Icon(Icons.email),
        ),
        obscureText: true,
      ),
      SizedBox(
        height: 10,
     ),
     TextField(
        decoration: InputDecoration(
          hintText: "password",
          border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
          fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
         filled: true,
        
          prefixIcon: Icon(Icons.lock),
        ),
        obscureText: true,
      ),
      SizedBox(
        height: 10,
     ) ,

       MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => JOIN()));
                    },
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      "sign up",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                  ),
                 
      
        
    ],
  );
  
}


_signIn(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("you have an account"),
      TextButton(onPressed: () {
        Navigator.push(
                      context, MaterialPageRoute(builder: (context) => LoginScreen()));


      }, child: Text("sign in")),
    ],
  );
}

  