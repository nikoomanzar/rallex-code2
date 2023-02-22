import 'dart:async';
import 'dart:core';
import 'dart:core';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:hovering/hovering.dart';
import 'package:flutter/material.dart';
import 'package:site/MobileHome.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:site/Widget/BackGroundVideo.dart';

import 'datalink.dart';
double op=1.0;
bool opc=false;
bool opc1=true;
bool opc2=true;
bool opc3=true;
int _focusedIndex=0;
double _focusedIndex2=0;
double _f2=0.0;
double op1=0.0;
double op2=0.0;
double op3=1.0;
double newhover=0.0;
bool change1=true;
bool change2=true;
bool change3=true;
String address1="";
String address2="";
String address3="";
var filmadd;
var picadd;
class MobileHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MobileHomeState();
  }

}
class MobileHomeState extends State<MobileHome> with TickerProviderStateMixin{
  List booll =[change1,change2,change3];
  List name=["WALLPALPER","WALL FABRIC","DECORATIVE \n\t\t\t\t\t\t\t\t\t TILE"];
  List picname=["assets/images/h2.jpg","assets/images/h1.jpg","assets/images/h3.jpg"];
  List picname1=["assets/images/m1.png","assets/images/m2.png","assets/images/m3.png"];

  void _onItemFocus(int index) {
    setState(() {
      _focusedIndex = index;
      if(_focusedIndex==0){
      }
    });
  }
  Widget _builditem (BuildContext context , int index){
    var size=MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        print("tt");
      },
      child: AnimatedBuilder(
        animation: controller3,
        builder: (BuildContext context , Widget? child){
          return Opacity(opacity: aniamtion3.value ,child: AnimatedSwitcher(duration :Duration(milliseconds: 200),child: booll[index] ? Opacity(key: Key('1'),opacity: 1,child: GestureDetector(
            onTap: (){
              setState(() {
                change1=false;
              });
            },
            child: Container(
                width: size.width*0.7,
                height: size.height*0.55,
                decoration: BoxDecoration(border: Border.all(color: Colors.white38,width: 1),borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: GestureDetector(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        (index==2)?
                           Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text("Decorative",style: TextStyle(fontSize: size.width*0.080,color: Colors.white,fontFamily: 'tw',decoration: TextDecoration.none),),
                               Text("Tile",style: TextStyle(fontSize: size.width*0.080,color: Colors.white,fontFamily: 'tw',decoration: TextDecoration.none),),
                             ],
                           )
                            : Text(name[index],style: TextStyle(fontSize: size.width*0.080,color: Colors.white,fontFamily: 'tw',decoration: TextDecoration.none),),
                      ],
                    ),
                    onTap: (){
                      setState(() {
                        opc=true;

                        _f2=_focusedIndex.toDouble();
                      });
                    },
                  )
                )
            ),
          ),): Container(
              width: size.width*0.7,
              height: size.height*0.55,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(picname[index]),fit: BoxFit.cover),
                  border: Border.all(color: Colors.white38,width: 1),borderRadius: BorderRadius.circular(20)),
              child:  Center(
                child: GestureDetector(
                  child: Text(name[index],style: TextStyle(fontSize: size.width*0.080,color: Colors.white,fontFamily: 'tw',decoration: TextDecoration.none),),
                    onTap: (){
                      setState(() {
                        _focusedIndex2=index.toDouble();
                      });
              },
                )
              )
          )));
        },
      ),
    );
  }
  Widget _builditem1 (BuildContext context , int index){
    var size=MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        print("tt");
      },
      child: AnimatedBuilder(
        animation: controller3,
        builder: (BuildContext context , Widget? child){
          return Container(
              width: size.width*0.7,
              height: size.height*0.55,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(picname[index]),fit: BoxFit.cover),
                  border: Border.all(color: Colors.white38,width: 1),borderRadius: BorderRadius.circular(20)),
              child:  Center(
                  child: GestureDetector(
                    child: Center(
                      child: SizedBox(
                        width: size.width*0.5,
                        height: size.width*0.4,
                        child: Opacity(opacity: 0.8,child: Image(image: AssetImage(picname1[index]),),),
                      ),
                    ),
                    onTap: (){
                      setState(() {
                        print(index);
                        if(index==0){
                          page1(0, 1);
                          Navigator.pushNamed(context, "/Product");
                        }else if (index==1){
                          page1(2, 3);
                          Navigator.pushNamed(context, "/Product");
                        }else if (index==2){
                          page2(title1, 4);
                          page3(4);
                          Navigator.pushNamed(context, "/product2");
                        }
                      });
                    },
                  )
              )
          );
        },
      ),
    );
  }
  bool _isAccept=false;
  late ScrollController _controller;
  late AnimationController controller;
  late AnimationController controller1;
  late AnimationController controller2;
  late AnimationController controller22;
  late AnimationController controller3;
  late Animation<double> aniamtion2;
  late Animation<double> aniamtion3;
  late Animation<double> aniamtion;
  late Animation<double> aniamtion1;
  starttime(){
    var duration= new Duration(milliseconds: 500);
    return new Timer(duration,(){
      setState(() {
        op1=1.0;
      });
    });
  }
  starttime2(){
    var duration= new Duration(seconds: 34);
    return new Timer(duration,(){
      setState(() {
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _controller=ScrollController()..addListener(_reachEnd);
    controller = new AnimationController(vsync: this,duration: Duration(seconds: 30));
    controller2 = new AnimationController(vsync: this,duration: Duration(milliseconds: 3000));
    controller22 = new AnimationController(vsync: this,duration: Duration(milliseconds: 30000));
    controller3 = new AnimationController(vsync: this,duration: Duration(seconds: 16));
    controller1 = new AnimationController(vsync: this,duration: Duration(milliseconds: 2000));
    aniamtion= Tween(begin: 1.0,end: 0.01).animate(new CurvedAnimation(parent: controller22, curve: Curves.easeInBack));
    aniamtion1= Tween(begin: 0.3,end: 1.0).animate(new CurvedAnimation(parent: controller1, curve: Curves.easeIn));
    aniamtion2=Tween(begin: 200.0,end:10.0).animate(new CurvedAnimation(parent: controller2, curve:Curves.easeInBack));
    aniamtion3=Tween(begin: 0.0,end:1.0).animate(new CurvedAnimation(parent: controller3, curve:Curves.ease));
    //starttime();
    filmadd="assets/film/f1.mp4";
    picadd="assets/images/p4.jpg";
    starttime2();
    controller2.forward();
    controller1.forward();
    controller.forward();
    controller3.forward();

  }
  Widget animationbuilder(BuildContext context,Widget? child){
    return Opacity(
      opacity: aniamtion1.value,
      child: Container(
        //color: Colors.blueAccent,
      ),
    );
  }
  Widget animationbuilder2(BuildContext context,Widget? child){
    var size=MediaQuery.of(context).size;
    return Positioned(
        top: aniamtion2.value,
        left: size.width*0.271,
        child: SizedBox(
          width: size.width*0.425,
          height: size.width*0.40,
          child: Image(image: AssetImage("assets/images/logo.png"),),
        )
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
    controller.dispose();
    controller1.dispose();
    controller3.dispose();
    controller2.dispose();
  }
  void _reachEnd(){
    if (_controller.offset >= _controller.position.maxScrollExtent && !_controller.position.outOfRange){
      _isAccept=true;
      setState(() {

      });
    }
  }
  @override
  Widget build(BuildContext context) {
    //double fs = Adaptive.sp(13);
    final _platform = Theme.of(context).platform;
    var size=MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: Colors.black,
      child: SingleChildScrollView(
        controller: _controller,
        child: Stack(
          children: [
            FittedBox(
              fit: BoxFit.cover,
              child:SizedBox(
                width: size.width,
                height: size.height,
                child: VideoApp(assets: filmadd),
              ),
            ),
            AnimatedBuilder(animation: controller, builder: animationbuilder),
            AnimatedBuilder(animation: controller2, builder: animationbuilder2),
            AnimatedBuilder(animation: controller, builder: animationbuilder),
            Container(
              color: Colors.black54,
            ),
            AnimatedBuilder(animation: controller3, builder: (BuildContext context,Widget? child){
              return Positioned(
                  top: size.height*0.090,
                  right: size.width*0.062,
                  child: Opacity(opacity: aniamtion3.value,
                    child: SizedBox(
                      width: size.width*0.06,
                      height: size.width*0.06,
                      child: GestureDetector(
                        child: Image(image: AssetImage("assets/images/Mbutton.png"),),
                        onTap: (){
                          setState(() {
                            Navigator.pushNamed(context, "/Menu");
                          });
                        },
                      ),
                    ),
                  ));
            }),
            AnimatedBuilder(animation: controller3, builder: (BuildContext context,Widget? child){
              return Positioned(
                  top: size.height*0.16,
                  right: size.width*0.062,
                  child: Opacity(
                    opacity: aniamtion3.value,
                    child: GestureDetector(
                      onTap: (){
                        final number = '021220356';
                        setState(()  async {
                          if(_platform == TargetPlatform.android){
                            launch('tel://$number');
                          }else if (_platform == TargetPlatform.iOS){
                            launch('tel://$number');
                          }else{
                            Navigator.pushNamed(context, "/contact");
                          }
                        });
                      },
                      child: SizedBox(
                        width: size.width*0.06,
                        height: size.width*0.06,
                        child: Image(image: AssetImage("assets/images/Cbutton.png"),),
                      ),
                    ),
                  ));
            }),
            AnimatedBuilder(animation: controller3, builder: (BuildContext context,Widget? child){
              return Positioned(
                  top: size.height*0.093,
                  left: size.width*0.062,
                  child: Opacity(opacity: aniamtion3.value,
                    child: SizedBox(
                      width: size.width*0.06,
                      height: size.width*0.06,
                      child: GestureDetector(
                        child: Image(image: AssetImage("assets/images/tl.png"),),
                        onTap: () async{
                          String Url="https://t.me/RALLEX_CO";
                          var urllauncher = await canLaunch(Url);
                          if(urllauncher){
                            await launch(Url);}

                        },
                      ),
                    ),
                  ));
            }),
            AnimatedBuilder(animation: controller3, builder: (BuildContext context,Widget? child){
              return Positioned(
                  top: size.height*0.157,
                  left: size.width*0.064,
                  child: Opacity(
                    opacity: aniamtion3.value,
                    child: GestureDetector(
                      onTap: () async{
                        String Url="https://api.whatsapp.com/send?phone=989120898229";
                        var urllauncher = await canLaunch(Url);
                        if(urllauncher){
                          await launch(Url);}
                      },
                      child: SizedBox(
                        width: size.width*0.06,
                        height: size.width*0.06,
                        child: Image(image: AssetImage("assets/images/wh.png"),),
                      ),
                    ),
                  ));
            }),
            ///////////////////////// Middle Page

            Positioned(
                top: size.height*0.37,
                left: size.width*0.165,
                child: Visibility(
                  visible: true,
                  child: SizedBox(
                      width: size.width*0.7,
                      height: size.height*0.55,
                      child: ImageSlideshow(
                        children: [
                          GestureDetector(
                            child: Container(
                                width: size.width*0.7,
                                height: size.height*0.55,
                                decoration: BoxDecoration(image: DecorationImage(image: AssetImage(address2),fit: BoxFit.cover),border: Border.all(color: Colors.white38,width: 1),borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                    child: Visibility(
                                      visible: opc2,
                                      child: Text(name[1],style: TextStyle(fontSize: size.width*0.080,color: Colors.white,fontFamily: 'tw',decoration: TextDecoration.none),),
                                    )
                                )
                            ),
                            onDoubleTap: (){
                              setState(() {
                                address2="";
                                opc2=true;
                              });
                            },
                            onTap: (){
                              setState(() {
                                if(address2 != ""){
                                  page1(2, 3);
                                  Navigator.pushNamed(context, "/Product");
                                }
                                opc2=false;
                                address2="assets/images/h2.jpg";
                              });
                            },
                          ),
                          GestureDetector(
                            child: Container(
                                width: size.width*0.7,
                                height: size.height*0.55,
                                decoration: BoxDecoration(image: DecorationImage(image: AssetImage(address1),fit: BoxFit.cover),border: Border.all(color: Colors.white38,width: 1),borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                    child: Visibility(
                                      visible: opc1,
                                      child: Text(name[0],style: TextStyle(fontSize: size.width*0.080,color: Colors.white,fontFamily: 'tw',decoration: TextDecoration.none),),
                                    )
                                )
                            ),
                            onDoubleTap: (){
                              setState(() {
                                address1="";
                                opc1=true;
                              });
                            },
                            onTap: (){
                              setState(() {
                                if(address1 != ""){
                                  page1(0, 1);
                                  Navigator.pushNamed(context, "/Product");
                                }
                                opc1=false;
                                address1="assets/images/h1.jpg";
                              });
                            },
                          ),
                          GestureDetector(
                            child: Container(
                                width: size.width*0.7,
                                height: size.height*0.55,
                                decoration: BoxDecoration(image: DecorationImage(image: AssetImage(address3),fit: BoxFit.cover),border: Border.all(color: Colors.white38,width: 1),borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                    child: Visibility(
                                      visible: opc3,
                                      child: Text(name[2],style: TextStyle(fontSize: size.width*0.080,color: Colors.white,fontFamily: 'tw',decoration: TextDecoration.none),),
                                    )
                                )
                            ),
                            onDoubleTap: (){
                              setState(() {
                                address3="";
                                opc3=true;
                              });
                            },
                            onTap: (){
                              setState(() {
                                if(address3 != ""){
                                  page2(title1, 4);
                                  page3(4);
                                  Navigator.pushNamed(context, "/product2");
                                }
                                opc3=false;
                                address3="assets/images/h3.jpg";
                              });
                            },
                          )
                        ],
                      )
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
  onhover(){
    setState(() {
      filmadd="assets/film/f2.mp4";
    });
  }
  exithover(){
    setState(() {
      filmadd="assets/film/f.mp4";
    });
  }
}
