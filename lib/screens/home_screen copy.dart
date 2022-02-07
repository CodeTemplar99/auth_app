// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
          leading: Row(
            children: [
              Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.black,
              ),
              Text(
                'back',
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 300,
                  color: Colors.green,
                  child: Text("hi"),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 400,
                height: 500,
                child: Card(
                  elevation: 4.0,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text('heading'),
                        subtitle: Text('heading'),
                        trailing: Icon(Icons.favorite_outline),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
