import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';
import 'package:approachablegeek/main.dart';
import 'data.dart';

class namePage extends StatefulWidget {
  namePage({Key? key}) : super(key: key);
  @override
  State<namePage> createState() => _namePageState();
}

class _namePageState extends State<namePage> {
  String first_name = '';
  String last_name = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
      centerTitle: true,
      backgroundColor: Colors.purple,
      title: Text(
        "Name",
        style: TextStyle(
          fontSize: 45,
          fontWeight: FontWeight.w800,
          fontFamily: "NerkoOne",
        ),
      ),
    ),
      body: Column(
        children: [
          SizedBox(height: 30,),
          Text(" What is your name?", style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.w200,
            fontFamily: "NerkoOne",
          ),),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              cursorColor: Colors.deepPurple,
              onChanged: (value){
                first_name = value;
              },
              style: TextStyle(
                color: Colors.black,
                fontFamily: "NerkoOne",
                fontSize: 25,
              ),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(23.0),
                    borderSide: BorderSide(
                      color: Colors.purple,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(23.0),
                    borderSide: BorderSide(
                      color: Colors.deepPurpleAccent,
                      width: 3.0,
                    ),
                  ),
                  hintText: "First Name",
                  hintStyle: TextStyle(
                      fontSize: 25, fontFamily: "NerkoOne")),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextFormField(
              onChanged: (value){
                last_name = value;
              },
              keyboardType: TextInputType.emailAddress,
              cursorColor: Colors.deepPurple,
              style: TextStyle(
                color: Colors.black,
                fontFamily: "NerkoOne",
                fontSize: 25,
              ),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(23.0),
                    borderSide: BorderSide(
                      color: Colors.purple,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(23.0),
                    borderSide: BorderSide(
                      color: Colors.deepPurpleAccent,
                      width: 3.0,
                    ),
                  ),
                  hintText: "Last Name",
                  hintStyle: TextStyle(
                      fontSize: 25, fontFamily: "NerkoOne")),
            ),
          ),
          SizedBox(height: 25,),
          FloatingActionButton.extended(
              heroTag: "Button1",
              backgroundColor: Colors.purple,
              label: Text("Save",style: TextStyle(
                color: Colors.white,
                fontFamily: "NerkoOne",
                fontSize: 25,
              ),),
              icon: Icon(Icons.save_alt,color: Colors.white),
              onPressed: (){
                String full_name = first_name + " " + last_name;
                Navigator.pop(context, full_name);
              },


          )

        ],
      ),
    );

  }
}

