import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Regsitration'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // First name
            Padding(
              padding: EdgeInsetsDirectional.only(
                start: 30,
                end: 30,
                bottom: 10,
                top: 50,
              ),
              child: TextField(
                autofocus: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'First Name',
                  hintText: 'Enter first name',
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
            ),

            // last name
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
                  labelText: 'Last Name',
                  hintText: 'Enter last name',
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
            ),

            // email
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
                  labelText: 'E-mail',
                  hintText: 'Enter email address',
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
            ),

            // phone number
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
                  labelText: 'Mobile no.',
                  hintText: 'Enter mobile number',
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
            ),

            // for password
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
                  labelText: 'Password',
                  hintText: 'Enter password',
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
                obscureText: true,
              ),
            ),

            // Confirm password
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
                  labelText: 'Confirm Password',
                  hintText: 'Enter password again',
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
                obscureText: true,
              ),
            ),

            // signup button
            Padding(
              padding: EdgeInsetsDirectional.only(
                start: 30,
                end: 30,
                bottom: 10,
                top: 30,
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
                    'Sign Up',
                    style: TextStyle(color: Colors.white, fontSize: 25),
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
