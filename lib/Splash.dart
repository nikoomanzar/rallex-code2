import 'dart:async';

import 'package:flutter/material.dart';
import 'package:site/Home.dart';
class Splash extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return Splashstate();
  }

}
class Splashstate extends State<Splash>{
  starttime(){
    var duration= new Duration(seconds: 5);
    return new Timer(duration,navigationpage);
  }
  navigationpage(){
    Navigator.of(context).push(createRoute());
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    starttime();
  }
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
      color: Colors.black,
      child: Stack(
        children: [
          Positioned(
              top: size.height*0.255,
              left: size.width*0.361,
              child: SizedBox(
                width: size.width*0.225,
                height: size.width*0.10,
                child: Image(image: AssetImage("assets/images/logo.png"),),
              )),
        ],
      ),
    );
  }

}

Route createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Home(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}