import 'dart:ui';

import 'package:flutter/material.dart';
class Contact extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const Contact();
  @override

  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<Contact> {
  final _text = TextEditingController();
  bool _validate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfeeeeee),
      body:Center(
      child :Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
        Text(
          "Contact",
          style: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
    
        
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            children: <Widget>[
              Text('Send a message and we will get back to you within 24 hours'),
              SizedBox(height: 8.0),              TextField(
                decoration: InputDecoration(
                  filled: true,
                  hintText: "Name",
                  errorText: _validate ? 'Value Can\'t Be Empty' : null,
                 
                   fillColor: Colors.white,
                  border: InputBorder.none,
                ),
              ),
                 SizedBox(height: 8.0),
                TextField(
                decoration: InputDecoration(
                  filled: true,
                  hintText: "Email",
                  errorText: _validate ? 'Value Can\'t Be Empty' : null,
                 fillColor: Colors.white,
                  border: InputBorder.none,
                ),
                
              ),
                  SizedBox(height: 8.0),
                TextField(
                  maxLines: 7,
                  maxLength: 4,
                decoration: InputDecoration(
                  filled: true,
                  hintText: "Message",
                  errorText: _validate ? 'Value Can\'t Be Empty' : null,
                  fillColor: Colors.white,
                  border: InputBorder.none,
                ),
              ),
              SizedBox(height: 8.0,),
              MaterialButton(
                height: 60.0,
                minWidth: double.infinity,
                color: Colors.blueAccent,
                onPressed: (){
                  setState(() {
                    _text.text.isEmpty ? _validate = true : _validate = false;
                  });
                },
                child: Text("Submit",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
              )
            ]
            ),
        ),
        ],
        ),
      ),
    );
  }
  
}