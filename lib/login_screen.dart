import 'package:flutter/material.dart';
import './register_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("We Source"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // sign in or logo
            Padding(
              padding: const EdgeInsets.only(top: 60.0, bottom: 30),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    child: Image.asset('asset/images/we_src.png')),
              ),
            ),

            // for email id or phone number
            Padding(
              padding: EdgeInsetsDirectional.only(
                start: 30,
                end: 30,
                bottom: 10,
                top: 10,
              ),
              child: TextField(
                autofocus: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                  hintText: 'Enter email or phone number',
                  //prefixIcon: Icon(Icons.lock),
                ),
              ),
            ),

            // for password
            Padding(
              padding: EdgeInsetsDirectional.only(
                  start: 30, end: 30, bottom: 10, top: 10),
              child: TextField(
                autofocus: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  //prefixIcon: Icon(Icons.lock),
                  hintText: 'Enter password',
                ),
                obscureText: true,
              ),
            ),

            // login button
            Padding(
              padding: EdgeInsetsDirectional.only(
                start: 30,
                end: 30,
                bottom: 10,
                top: 20,
              ),
              child: Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextButton(
                  onPressed: () {
                    // do something on Pressed
                    FocusScope.of(context).unfocus();
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ),
            //   child: Row(
            //     children: <Widget>[
            //       Container(
            //         height: 50,
            //         width: 150,
            //         decoration: BoxDecoration(
            //           color: Colors.blue,
            //           borderRadius: BorderRadius.circular(15),
            //         ),
            //         child: TextButton(
            //           onPressed: () {
            //             // do something on Pressed
            //             FocusScope.of(context).unfocus();
            //           },
            //           child: Text(
            //             'Login',
            //             style: TextStyle(color: Colors.white, fontSize: 25),
            //           ),
            //         ),
            //       ),
            //       Container(
            //         height: 50,
            //         width: 150,
            //         decoration: BoxDecoration(
            //           color: Colors.blue,
            //           borderRadius: BorderRadius.circular(15),
            //         ),
            //         child: TextButton(
            //           onPressed: () {
            //             // do something on Pressed
            //             FocusScope.of(context).unfocus();
            //           },
            //           child: Text(
            //             'Sign up',
            //             style: TextStyle(color: Colors.white, fontSize: 25),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

            // forgot password
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width: 150,
                child: TextButton(
                  onPressed: () {
                    // do whatever the hell you want probably take to another page
                    FocusScope.of(context).unfocus();
                  },
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Forgot Passwrod?",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              ),
            ),

            // SizedBox(
            //   height: 130,
            // ),
            // Create account
            Container(
              width: 250,
              child: TextButton(
                onPressed: () {
                  // do whatever the hell you want probably take to another page
                  FocusScope.of(context).unfocus();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Don't have an account? Sign up here",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
