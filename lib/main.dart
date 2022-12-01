import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
        body: Column(
          children: [
            SizedBox(
              height: 150,
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
                  hintText: "Approachable Geek",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    fontFamily: "NerkoOne"
                  )
                ),
              ),
            ),

            SizedBox(
              height: 35,
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
                      hintText: "05334313224",
                      hintStyle: TextStyle(
                          fontSize: 20,
                          fontFamily: "NerkoOne"
                      )
                  )
              ),
            ),
            SizedBox(
              height: 35,
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
                      hintText: "ozlerrege@gmail.com",
                      hintStyle: TextStyle(
                          fontSize: 20,
                          fontFamily: "NerkoOne"
                      )
                  )
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: EdgeInsets.all(10),


              child:
              TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.red,
                  cursorHeight: 5,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    height: 6,
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
                      hintText: "My bio",
                      hintStyle: TextStyle(
                          fontSize: 20,
                          fontFamily: "NerkoOne"
                      )
                  )
              ),

          ),
]
      ),
      ),
    );
  }
}




