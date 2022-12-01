import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    File? images;
    File? banner_images;

    Future pickImage() async {
      try {
        final image = await ImagePicker().pickImage(source: ImageSource.gallery);

        if(image == null) return;

        final imageTemp = File(image.path);

        setState(() => this.images = imageTemp);
      } on PlatformException catch(e) {
        print('Failed to pick image: $e');
      }

    }
    Future pickBannerImage() async {
      try {
        final image = await ImagePicker().pickImage(source: ImageSource.gallery);

        if(image == null) return;

        final imageTemp = File(image.path);

        setState(() => this.banner_images = imageTemp);
      } on PlatformException catch(e) {
        print('Failed to pick image: $e');
      }

    }
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
                  InkWell(
                    customBorder: const RoundedRectangleBorder(),
                    child: Container(
                      height: 170,
                      width: 650,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                              scale: 3.5,
                              image: banner_images != null?
                              FileImage(banner_images!):
                              NetworkImage("https://thumbs.dreamstime.com/b/default-avatar-profile-vector-user-profile-default-avatar-profile-vector-user-profile-profile-179376714.jpg") as ImageProvider
                          )

                      ),


                    ),
                    onTap: () async {
                      print("Pressed");
                      pickBannerImage();


                    },
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
                          child: CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 75,
                              child: CircleAvatar(
                                radius: 73,
                                  backgroundImage: images != null?
                                  FileImage(images!):
                                  NetworkImage("https://thumbs.dreamstime.com/b/default-avatar-profile-vector-user-profile-default-avatar-profile-vector-user-profile-profile-179376714.jpg") as ImageProvider
                              ),

                          ),


                          onTap: () async {
                            print("Pressed");
                            pickImage();


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







