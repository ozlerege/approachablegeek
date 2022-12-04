import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:approachablegeek/name.dart';
import 'data.dart';
import 'package:approachablegeek/email.dart';
import 'package:approachablegeek/phone.dart';
import 'package:approachablegeek/bio.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(home:
  MyApp(),));
}

class MyApp extends StatefulWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {
  File? images;
  File? banner_images;
  String email = '';
  String bio = '';
  String name = '';
  String phone = '';



  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.images = imageTemp);
    } on PlatformException catch (exc) {
      print('Error on picking an image: $exc');
    }
  }

  Future pickBannerImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.banner_images = imageTemp);
    } on PlatformException catch (exc) {
      print('Error on picking a banner image: $exc');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.purple,
          title: Text(
            "Profile",
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.w800,
              fontFamily: "NerkoOne",
            ),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
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
                              image: banner_images != null
                                  ? FileImage(banner_images!)
                                  : NetworkImage(
                                  "https://thumbs.dreamstime.com/b/default-avatar-profile-vector-user-profile-default-avatar-profile-vector-user-profile-profile-179376714.jpg")
                              as ImageProvider)),
                    ),
                    onTap: () async {
                      pickBannerImage();
                    },
                  ),
                  Positioned(
                      top: 100,
                      child: Column(
                        children: [
                          InkWell(
                            customBorder: const CircleBorder(),
                            hoverColor: Colors.yellow,
                            child: CircleAvatar(
                              backgroundColor: Colors.purple,
                              radius: 75,
                              child: CircleAvatar(
                                  radius: 73,
                                  backgroundImage: images != null
                                      ? FileImage(images!)
                                      : NetworkImage(
                                      "https://thumbs.dreamstime.com/b/default-avatar-profile-vector-user-profile-default-avatar-profile-vector-user-profile-profile-179376714.jpg")
                                  as ImageProvider),
                            ),
                            onTap: () async {
                              print("Pressed");
                              pickImage();
                            },
                          ),
                        ],
                      ))
                ],
              ),
              SizedBox(
                height: 120,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    _navigateTheResults(context);

                  },
                  splashColor: Colors.purple,
                  child: Container(
                    height: 60,
                    width: 350,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.account_box_outlined,
                            color: Colors.purple,
                            size: 30),
                        SizedBox(width: 5,),
                        Flexible(child:
                        RichText(
                            text: new TextSpan(
                                style: new TextStyle(
                                  fontSize: 24,
                                  color: Colors.purple,
                                ),
                                children: <TextSpan>[
                                  new TextSpan(
                                      text: "Name : ",
                                      style: TextStyle(
                                        color: Colors.purple,
                                        fontFamily: "NerkoOne",
                                        fontSize: 25,
                                      )
                                  ),
                                  new TextSpan(
                                      text: name,
                                      style: TextStyle(
                                        color: Colors.purple,
                                        fontFamily: "NerkoOne",
                                        fontSize: 25,
                                      )
                                  ),

                                ]
                            )),
                        )



                      ],

                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    _navigateTheResultsEmail(context);

                  },
                  splashColor: Colors.purple,
                  child: Container(
                    height: 60,
                    width: 350,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.mail,
                            color: Colors.purple,
                            size: 30),
                        SizedBox(width: 5,),
                        Flexible(child:RichText(
                            text: new TextSpan(
                                style: new TextStyle(
                                  fontSize: 24,
                                  color: Colors.purple,
                                ),
                                children: <TextSpan>[
                                  new TextSpan(
                                      text: "E-mail : ",
                                      style: TextStyle(
                                        color: Colors.purple,
                                        fontFamily: "NerkoOne",
                                        fontSize: 25,
                                      )
                                  ),
                                  new TextSpan(
                                      text: email,
                                      style: TextStyle(
                                        color: Colors.purple,
                                        fontFamily: "NerkoOne",
                                        fontSize: 25,
                                      )
                                  ),

                                ]
                            )),
                        )



                      ],

                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    _navigateTheResultsPhone(context);

                  },
                  splashColor: Colors.purple,
                  child: Container(
                    height: 60,
                    width: 350,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.phone,
                            color: Colors.purple,
                            size: 30),
                        SizedBox(width: 5,),

                        RichText(
                            text: new TextSpan(
                                style: new TextStyle(
                                  fontSize: 24,
                                  color: Colors.purple,
                                ),
                                children: <TextSpan>[
                                  new TextSpan(
                                      text: "Phone : ",
                                      style: TextStyle(
                                        color: Colors.purple,
                                        fontFamily: "NerkoOne",
                                        fontSize: 25,
                                      )
                                  ),
                                  new TextSpan(
                                      text: phone,
                                      style: TextStyle(
                                        color: Colors.purple,
                                        fontFamily: "NerkoOne",
                                        fontSize: 25,
                                      )
                                  ),

                                ]
                            )),


                      ],

                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    _navigateTheResultsBio(context);

                  },
                  splashColor: Colors.purple,
                  child: Container(
                    height: 80,
                    width: 350,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.emoji_people_outlined,
                            color: Colors.purple,
                            size: 30),
                        SizedBox(width: 5,),
                        Flexible(child: RichText(
                            text: new TextSpan(
                                style: new TextStyle(
                                  fontSize: 24,
                                  color: Colors.purple,
                                ),
                                children: <TextSpan>[
                                  new TextSpan(
                                      text: "Bio : ",
                                      style: TextStyle(
                                        color: Colors.purple,
                                        fontFamily: "NerkoOne",
                                        fontSize: 25,
                                      )
                                  ),
                                  new TextSpan(
                                      text: bio,
                                      style: TextStyle(
                                        color: Colors.purple,
                                        fontFamily: "NerkoOne",
                                        fontSize: 15,
                                      )
                                  ),

                                ]
                            )))
                        ,


                      ],

                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
  _navigateTheResults(BuildContext context) async{
    final res = await Navigator.push(context,MaterialPageRoute(builder: (context) => namePage()));

    setState(() {
      name = res;
    });
  }
  _navigateTheResultsEmail(BuildContext context) async{
    final res = await Navigator.push(context,MaterialPageRoute(builder: (context) => emailPage()));

    setState(() {
      email = res;
    });
  }
  _navigateTheResultsPhone(BuildContext context) async{
    final res = await Navigator.push(context,MaterialPageRoute(builder: (context) => phonePage()));

    setState(() {
      phone = res;
    });
  }
  _navigateTheResultsBio(BuildContext context) async{
    final res = await Navigator.push(context,MaterialPageRoute(builder: (context) => bioPage()));

    setState(() {
      bio = res;
    });
  }



}
