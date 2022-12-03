import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';
import 'package:approachablegeek/main.dart';
import 'data.dart';

class emailPage extends StatefulWidget {
  emailPage({Key? key}) : super(key: key);
  @override
  State<emailPage> createState() => _emailPageState();
}

class _emailPageState extends State<emailPage> {
  String email = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: Text(
          "E-mail",
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
          Text(" What is your e-mail?", style: TextStyle(
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
                email = value;
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
                  hintText: "E-mail",
                  hintStyle: TextStyle(
                      fontSize: 25, fontFamily: "NerkoOne")),
            ),
          ),
          SizedBox(height: 25,),
          FloatingActionButton.extended(
            heroTag: "Button2",
            backgroundColor: Colors.purple,
            label: Text("Save",style: TextStyle(
              color: Colors.white,
              fontFamily: "NerkoOne",
              fontSize: 25,
            ),),
            icon: Icon(Icons.save_alt,color: Colors.white),
            onPressed: (){
              Navigator.pop(context, email);
            },


          )
        ],
      ),


    );

  }
}

