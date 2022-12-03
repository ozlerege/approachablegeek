import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';
import 'package:approachablegeek/main.dart';
import 'data.dart';

class bioPage extends StatefulWidget {
  bioPage({Key? key}) : super(key: key);
  @override
  State<bioPage> createState() => _bioPageState();
}

class _bioPageState extends State<bioPage> {
  String bio = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: Text(
          "Bio",
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
          Text("Tell me about yourself", style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.w200,
            fontFamily: "NerkoOne",
          ),),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              cursorColor: Colors.deepPurple,
              maxLines: 5,
              onChanged: (value){
                bio = value;
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
                  hintText: "Your Bio",
                  hintStyle: TextStyle(
                      fontSize: 25, fontFamily: "NerkoOne")),
            ),
          ),
          SizedBox(height: 25,),
          FloatingActionButton.extended(
            heroTag: "Button4",
            backgroundColor: Colors.purple,
            label: Text("Save",style: TextStyle(
              color: Colors.white,
              fontFamily: "NerkoOne",
              fontSize: 25,
            ),),
            icon: Icon(Icons.save_alt,color: Colors.white),
            onPressed: (){
              Navigator.pop(context, bio);
            },


          )
        ],
      ),


    );

  }
}

