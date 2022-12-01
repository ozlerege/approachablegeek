import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
void main() {
  runApp(const MyApp());
}



  class MyApp extends StatefulWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    State<MyApp> createState() => _MyAppState();
  }

  class _MyAppState extends State<MyApp> {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: Text("Profile Page",
                style: TextStyle(
                  fontSize: 45,
                  fontWeight:FontWeight.w800,
                  fontFamily: "NerkoOne",
                ),),
            ),
            body: Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  children: [

                    Container(
                      height: 160,
                      color: Colors.orange,
                      child: Center(
                        child: Text("Banner Goes here"),
                      ),
                    ),


                    Expanded(child: Column(
                      children: [
                        SizedBox(
                          height: 120,
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: Colors.red,
                            style: TextStyle(
                              color: Colors.deepOrange,
                              fontFamily: "NerkoOne",
                              fontSize: 20,

                            ),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(23.0),
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(

                                  borderRadius: BorderRadius.circular(23.0),
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                    width: 3.0,
                                  ),
                                ),
                                icon: Icon(
                                  Icons.account_box_outlined,
                                  color:Colors.purple,
                                  size: 30,
                                ),
                                hintText: "Enter your name",
                                hintStyle: TextStyle(
                                    fontSize: 20,
                                    fontFamily: "NerkoOne"
                                )
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: TextFormField(
                              keyboardType: TextInputType.phone,
                              cursorColor: Colors.red,
                              style: TextStyle(
                                color: Colors.deepOrange,
                                fontFamily: "NerkoOne",
                                fontSize: 20,

                              ),
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(23.0),
                                    borderSide: BorderSide(
                                      color: Colors.red,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(23.0),
                                    borderSide: BorderSide(
                                      color: Colors.red,
                                      width: 3.0,
                                    ),
                                  ),
                                  icon: Icon(
                                    Icons.add_call,
                                    color:Colors.purple,
                                    size: 30,
                                  ),
                                  hintText: "Enter your phone number",
                                  hintStyle: TextStyle(
                                      fontSize: 20,
                                      fontFamily: "NerkoOne"
                                  )
                              )
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              cursorColor: Colors.red,
                              style: TextStyle(
                                color: Colors.deepOrange,
                                fontFamily: "NerkoOne",
                                fontSize: 20,

                              ),
                              decoration: InputDecoration(

                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(23.0),
                                    borderSide: BorderSide(
                                      color: Colors.red,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(

                                    borderRadius: BorderRadius.circular(23.0),
                                    borderSide: BorderSide(
                                      color: Colors.red,
                                      width: 3.0,
                                    ),
                                  ),
                                  icon: Icon(
                                    Icons.email_outlined,
                                    color:Colors.purple,
                                    size: 30,
                                  ),
                                  hintText: "Enter your e-mail",
                                  hintStyle: TextStyle(
                                      fontSize: 20,
                                      fontFamily: "NerkoOne"
                                  )
                              )
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),


                          child:
                          TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              cursorColor: Colors.red,
                              maxLines: 5,
                              textAlignVertical: TextAlignVertical.top ,
                              style: TextStyle(

                                color: Colors.deepOrange,
                                fontFamily: "NerkoOne",
                                fontSize: 20,

                              ),
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(23.0),
                                    borderSide: BorderSide(
                                      color: Colors.red,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(23.0),
                                    borderSide: BorderSide(
                                      color: Colors.red,
                                      width: 3.0,
                                    ),
                                  ),
                                  icon: Icon(
                                    Icons.emoji_people_outlined,
                                    color:Colors.purple,
                                    size: 30,
                                  ),
                                  hintText: "Enter Your Bio",
                                  hintStyle: TextStyle(
                                      fontSize: 20,
                                      fontFamily: "NerkoOne"
                                  )
                              )
                          ),

                        ),

                      ],
                    ))
                  ],

                ),
                Positioned(
                    top: 100,
                    child: Column(
                      children: [
                        InkWell(
                          customBorder:const CircleBorder(),
                          hoverColor: Colors.yellow,
                          child: Container(

                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green,
                            ),
                          ),
                          onTap: () async {
                            print("Pressed");


                          },
                        ),



                      ],
                    )
                )
              ],
            )

        ),
      );
    }
  }







