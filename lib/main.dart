import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:splashscreen/Middlepage/social.dart';
import 'package:splashscreen/icon.dart';

void main() => runApp(MaterialApp(
  home: MyApp(),
  debugShowCheckedModeBanner: false,
));

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => new _MyAppState();
}
 


class _MyAppState extends State<MyApp>{

  Widget horizontalline() => Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    child: Container(
      width: ScreenUtil.getInstance().setWidth(120),
      height: 1.0,
      color: Colors.black26.withOpacity(0.2),
    ),
  );

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance = ScreenUtil(width:750,height:1334,allowFontScaling: true);
    return new Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      body: Stack(
        fit:  StackFit.expand,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Image.asset("assets/resume01.jpeg"),  
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.only(left: 28.0,right: 28.0,top: 60.0),
              child: Column(

                children: <Widget>[

                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(180),
                  ),
                  new Container(
                    width: double.infinity,
                    height: ScreenUtil.getInstance().setHeight(500),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0.0,15.0),
                              blurRadius: 15.0),
                          BoxShadow(
                             color: Colors.black12,
                             offset: Offset(0.0,-10.0),
                             blurRadius: 10.0),
                              ]),
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.0,right: 16.0,top: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Login",style:TextStyle(
                              fontSize: ScreenUtil.getInstance().setSp(60),
                              fontFamily: "design.graffiti.comicsansms", letterSpacing: .6)),
                          SizedBox(
                            height: ScreenUtil.getInstance().setHeight(30),
                          ),
                          Text("Username",
                              style: TextStyle(
                                  fontFamily: "design.graffiti.comicsansms",
                                  fontSize: ScreenUtil.getInstance().setSp(35))),
                          TextField(
                            decoration: InputDecoration(
                                hintText: "dmprajapati001@gmail.com",
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10.0)),),
                          SizedBox(
                            height: ScreenUtil.getInstance().setHeight(30),),
                          Text("Password",
                              style: TextStyle(
                                  fontFamily: "design.graffiti.comicsansms",
                                  fontSize: ScreenUtil.getInstance().setSp(35))),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: "12345678",
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10.0)),
                            ),
                            SizedBox(
                                 height: ScreenUtil.getInstance().setHeight(35),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text("Forgot Password",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontFamily: "design.graffiti.comicsansms",
                                    fontSize: ScreenUtil.getInstance().setSp(28)
                             ) ,)
                         ],
                       )],
                   ),
                 ),
               ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(40)),

                    InkWell(
                      child:  Container(
                        width: ScreenUtil.getInstance().setWidth(330),
                        height: ScreenUtil.getInstance().setHeight(100),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.blue,
                              Colors.deepPurple
                            ]
                          ),
                          borderRadius: BorderRadius.circular(6.0),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF6078ea).withOpacity(0.3),
                              offset: Offset(0.0,8.0),
                              blurRadius: 8.0
                            )
                          ]),

                        child: Material(
                          color: Colors.transparent,

                          child: InkWell(
                            onTap: (){},
                            child: Center(
                              child: Text("Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "design.graffiti.comicsansms",
                                fontSize: 18,
                                letterSpacing: 2.0)),
                            ),
                          ),
                        ),
                      ),
                     ),
                   SizedBox(
                     height: ScreenUtil.getInstance().setHeight(40),
                   ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      horizontalline(),
                      Text("Social Login",
                         style: TextStyle(
                           fontSize: 16.0,
                           fontFamily: "design.graffiti.comicsansms")),
                      horizontalline()
                       ],
                     ),
                     SizedBox(
                       height: ScreenUtil.getInstance().setHeight(40),
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         SocialIcon(
                           colors: [
                             Colors.red,
                             Colors.red
                           ],

                         iconData: CustomIcons.googlePlus,
                           onPressed: (){},
                         ),
                       ],
                     ),

                    ],
                  ),
                ),
              ),
            ],
          ),
       );
  }
}

