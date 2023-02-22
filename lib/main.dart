// @dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:site/Brand.dart';
import 'package:site/Home.dart';
import 'package:site/Menu.dart';
import 'package:site/MobileHome.dart';
import 'package:site/Pictures.dart';
import 'package:site/Splash.dart';
import 'package:flutter/services.dart';
import 'package:site/agenct2.dart';
import 'package:site/agency.dart';
import 'package:site/contact.dart';
import 'package:site/photo.dart';
import 'package:site/product.dart';
import 'package:site/product0.dart';
import 'package:site/product2.dart';
import 'package:site/product3.dart';
void main(){
  runApp(new MyApp());
}
class MyApp extends StatelessWidget{
  Widget get child => null;

  @override
  Widget build(BuildContext context) {
    final _platform = Theme.of(context).platform;
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    return MaterialApp(
      title: "Rallex",
      debugShowCheckedModeBanner: false,
      initialRoute:"/Home",
      routes: {
        "/Spalsh":(context) => new Splash(),
        "/Home":(context) => new Home(),
        "/MobileHome":(context) => new MobileHome(),
        "/Menu":(context) => new Menu(),
        "/Product":(context) => new Product(),
        "/contact":(context) =>new contact(),
        "/product2":(context) => new product2(),
        "/product3":(context) => new product3(),
        "/product0":(context) => new Product0(),
        "/Pictures" :(context) => new Pictures(),
        "/Brand":(context) => new Brand(),
        "/Agency":(context)=> new agency(),
        "/Agency2":(context)=> new agency2(),
        "/Photo":(context)=>new photo()

      },
    );
    throw UnimplementedError();
  }

}
class home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return homestate();
  }

}
class homestate extends State<home>{
  @override
  Widget build(BuildContext context) {
    return Container();
  }

}