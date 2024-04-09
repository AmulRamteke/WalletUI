// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:walletapp/homepage.dart';

// ignore: must_be_immutable
class loginpage extends StatelessWidget {
  loginpage({Key? key});

  var email = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
              child: Column(children: [
            SizedBox(height: 50),
            Icon(Icons.lock, size: 100),
            SizedBox(height: 50),
            Text(
              'Welcome to Login',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 25,
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  controller: email,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400)),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  controller: password,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400)),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text(
                  'Forget Password',
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
                padding: EdgeInsets.all(25),
                margin: EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => homepage()));
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )),
                )),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(children: [
                Expanded(
                  child: Divider(
                    thickness: 2,
                    color: Colors.grey[400],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Or Continue with',
                    style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 2,
                    color: Colors.grey[400],
                  ),
                ),
              ]),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/apple logo.png',
                  height: 71,
                ),
                SizedBox(height: 10),
                Image.asset('assets/images/google logo.png', height: 71)
              ],
            ),
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'You have Dont Account?',
                  style: TextStyle(fontSize: 18),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.push(context, route)
                  },
                  child: Text('Register Now',
                      style: TextStyle(color: Colors.blue, fontSize: 18)),
                )
              ],
            )
          ])),
        ),
      ),
    );
  }
}
