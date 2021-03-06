import 'package:flutter/material.dart';
import 'package:music_player/home.dart';

class ProfileScreen extends StatelessWidget {
  final _globalKey = GlobalKey<FormState>(); // access the state of the form throught the session
  var username, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Form(
              key: _globalKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "USERNAME",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Username",
                      prefixIcon: Icon(Icons.account_circle),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2)
                      ),
                    ),
                    onChanged: (value) {
                      username=value;
                    },
                    validator: (value) {
                      if (value.length < 4) {
                        if(value.length==0){
                          return "Field can't be empty";
                        }
                        else{
                          print("Value is less than 4");
                          return "Too short, add more values!";
                        }
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 40),
                  Text(
                    "PASSWORD",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2)
                      ),
                    ),
                    obscureText: true,
                    obscuringCharacter: "#",
                    onChanged: (value) {
                      password=value;
                    },
                    validator: (value) {
                      if (value.length < 4) {
                        if(value.length==0){
                          return "Field can't be empty";
                        }
                        else{
                          print("Value is less than 4");
                          return "Too short, add more values!";
                        }
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 80),
                  RaisedButton(
                    color: Colors.blue,
                    onPressed: () {
                      if (_globalKey.currentState.validate()) {
                        print("State is valid");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_)=> HomeScreen()
                          )
                        );
                      }
                      
                    },
                    child: Text(
                      "SUBMIT",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                    ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
