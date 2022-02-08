// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auth_app/constants.dart';
import 'package:auth_app/screens/login_screen.dart';
import 'package:auth_app/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

bool isChecked = false;

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        // extendBodyBehindAppBar: true,
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.black,
                  size: 20,
                ),
                Text(
                  'Back',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  height: 130,
                  width: 130,
                  color: Colors.transparent,
                  child: Image.asset('assets/images/logo2.png'),
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                width: 340,
                // height: 450,
                child: Column(
                  children: [
                    Card(
                      elevation: 4.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 28.0),
                            child: Text(
                              'Create Account',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 10.0),
                            child: TextField(
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                label: Text("Username"),
                                suffixIcon: Icon(Icons.account_box_rounded),
                                hintStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 2),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 10.0),
                            child: TextField(
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                label: Text("Email ID"),
                                suffixIcon: Icon(Icons.email),
                                hintStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 2),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 10.0),
                            child: TextField(
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                label: Text("Password"),
                                suffixIcon: Icon(Icons.remove_red_eye_rounded),
                                hintStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 2),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                            ),
                            child: Row(
                              children: [
                                // Icon(Icons.check_box_outline_blank_rounded),
                                Checkbox(
                                  value: isChecked,
                                  onChanged: (value) {
                                    // setState(() {
                                    //   isChecked = value!;
                                    // });
                                  },
                                ),
                                Text('I read and agree to '),
                                Text(
                                  'Terms & Conditions',
                                  style: TextStyle(
                                    color: kPrimaryColor,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(230, 50),
                                primary: Color(0xFFFC7823),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ProfileScreen()));
                              },
                              child: Text(
                                "Register Now",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 18.0, bottom: 30),
                            child: Column(
                              children: [
                                Text(
                                  'Or Register Using Social Media',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/facebook.png',
                                      height: 35,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                      'assets/images/twitter.png',
                                      height: 35,
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, bottom: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account?',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen(),
                                ),
                              );
                            },
                            child: Text(
                              'login',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
