import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:hovering/hovering.dart';
import 'package:flutter/material.dart';
import 'package:site/MobileHome.dart';
import 'package:site/product.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:site/Widget/BackGroundVideo.dart';
import 'datalink.dart';
double op=1.0;
double op1=0.0;
double op2=0.0;
double op3=1.0;
double newhover=0.0;
bool change1=true;
bool change2=true;
bool change3=true;
var filmadd;
var picadd;
class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }

}
class HomeState extends State<Home> with TickerProviderStateMixin{
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
    product1(1);
    product1(2);
    product1(3);
    _controller=ScrollController()..addListener(_reachEnd);
    controller = new AnimationController(vsync: this,duration: Duration(seconds: 30));
    controller2 = new AnimationController(vsync: this,duration: Duration(milliseconds: 3000));
    controller22 = new AnimationController(vsync: this,duration: Duration(milliseconds: 30000));
    controller3 = new AnimationController(vsync: this,duration: Duration(seconds: 16));
    controller1 = new AnimationController(vsync: this,duration: Duration(milliseconds: 2000));
    aniamtion= Tween(begin: 1.0,end: 0.01).animate(new CurvedAnimation(parent: controller22, curve: Curves.easeInBack));
    aniamtion1= Tween(begin: 0.3,end: 1.0).animate(new CurvedAnimation(parent: controller1, curve: Curves.easeIn));
    aniamtion2=Tween(begin: 200.0,end:20.0).animate(new CurvedAnimation(parent: controller2, curve:Curves.easeInBack));
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
        left: size.width*0.381,
        child: GestureDetector(
          child: SizedBox(
            width: size.width*0.225,
            height: size.width*0.10,
            child: Image(image: AssetImage("assets/images/logo.png"),),
          ),
          onTap: (){
            Navigator.pushNamed(context, "/Home");
          },

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
    final _platform = Theme.of(context).platform;
    var size=MediaQuery.of(context).size;
    return (size.height >= size.width)?MobileHome():Container(
      width: size.width,
      height: size.height,
      color: Colors.black87,
      child: SingleChildScrollView(
        controller: _controller,
        child: Column(
          children: [
            Stack(
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
                      top: size.height*0.108,
                      right: size.width*0.042,
                      child: Opacity(opacity: aniamtion3.value,
                        child: GestureDetector(
                          child: SizedBox(
                            width: size.width*0.023,
                            height: size.width*0.023,
                            child: Image(image: AssetImage("assets/images/Mbutton.png"),),
                          ),
                          onTap: (){
                            Navigator.pushNamed(context, "/Menu");
                          },
                        ),
                      ));
                }),
                AnimatedBuilder(animation: controller3, builder: (BuildContext context,Widget? child){
                  return Positioned(
                      top: size.height*0.190,
                      right: size.width*0.042,
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
                            width: size.width*0.025,
                            height: size.width*0.025,
                            child: Image(image: AssetImage("assets/images/Cbutton.png"),),
                          ),
                        ),
                      ));
                }),
                AnimatedBuilder(animation: controller3, builder: (BuildContext context,Widget? child){
                  return Positioned(
                      top: size.height*0.108,
                      left: size.width*0.042,
                      child: Opacity(opacity: aniamtion3.value,
                        child: GestureDetector(
                          child: SizedBox(
                            width: size.width*0.023,
                            height: size.width*0.023,
                            child: Image(image: AssetImage("assets/images/tl.png"),),
                          ), onTap: () async{
                            String Url="https://t.me/RALLEX_CO";
                            var urllauncher = await canLaunch(Url);
                            if(urllauncher){
                              await launch(Url);
                            }
                          },
                        ),

                      ));
                }),
                AnimatedBuilder(animation: controller3, builder: (BuildContext context,Widget? child){
                  return Positioned(
                      top: size.height*0.190,
                      left: size.width*0.042,
                      child: Opacity(
                        opacity: aniamtion3.value,
                        child: GestureDetector(
                          onTap: () async{
                            String Url="http://api.whatsapp.com/send?phone=989120898229";
                            var urllauncher = await canLaunch(Url);
                            if(urllauncher){
                              await launch(Url);
                            }
                          },
                          child: SizedBox(
                            width: size.width*0.025,
                            height: size.width*0.025,
                            child: Image(image: AssetImage("assets/images/wh.png"),),
                          ),
                        ),
                      ));
                }),
                ///////////////////////// Middle Page
                Positioned(
                  top: size.height*0.35,
                  left: size.width*0.38,
                  child:
                  AnimatedBuilder(
                    animation: controller3,
                    builder: (BuildContext context , Widget? child){
                      return Opacity(opacity: aniamtion3.value ,child: AnimatedSwitcher(duration :Duration(milliseconds: 200),child: change1 ? Opacity(key: Key('1'),opacity: 1,child: Container(
                        width: size.width*0.24,
                        height: size.height*0.6,
                        decoration: BoxDecoration(border: Border.all(color: Colors.white38,width: 1),borderRadius: BorderRadius.circular(20)),
                      ),): Container(
                        width: size.width*0.24,
                        height: size.height*0.6,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/h1.jpg"),fit: BoxFit.cover),
                            border: Border.all(color: Colors.white38,width: 1),borderRadius: BorderRadius.circular(20)),
                      )));
                    },
                  )
                  ,),
                Positioned(
                    top: size.height*0.505,
                    left: size.width*0.436,
                    child: AnimatedBuilder(
                      animation: controller3,
                      builder: (BuildContext context,Widget? child){
                        return GestureDetector(
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: HoverCrossFadeWidget(
                              firstChild:Opacity(
                                opacity: aniamtion3.value,
                                child:  GestureDetector(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: size.height*0.07,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: size.width*0.0175,
                                          ),
                                          Text("Wallpaper",style: TextStyle(fontSize: size.width*0.02,color: Colors.white,fontFamily: 'tw',decoration: TextDecoration.none),)
                                        ],
                                      )
                                    ],
                                  ),
                                  onTap: null,
                                ),
                              ),
                              secondChild: Opacity(
                                opacity: 1,
                                child: GestureDetector(
                                  child:Center(
                                    child:SizedBox(
                                      width: size.width*0.14,
                                      height: size.width*0.10,
                                      child: Opacity(child: Image(image: AssetImage("assets/images/png.png"),),opacity: 0.8,),
                                    ),
                                  ),
                                  onTap: null,
                                ),
                              ), duration: Duration(milliseconds: 200),
                            ),
                            onHover: (event){
                              setState(() {
                                change1=false;
                              });
                            },
                            onExit: (event){
                              setState(() {
                                change1=true;
                              });
                            },
                          ),
                          onTap: (){
                            decselect=0;
                            page1(0, 1);
                            Navigator.pushNamed(context, "/Product");
                          },
                        );
                      },
                    )),
                ////////////////////////
                Positioned(
                  top: size.height*0.35,
                  right: size.width*0.09,
                  child:
                  AnimatedBuilder(
                    animation: controller3,
                    builder: (BuildContext context , Widget? child){
                      return Opacity(opacity: aniamtion3.value ,child: AnimatedSwitcher(duration :Duration(milliseconds: 200),child: change2 ? Opacity(key: Key('1'),opacity: 1,child: Container(
                        width: size.width*0.24,
                        height: size.height*0.6,
                        decoration: BoxDecoration(border: Border.all(color: Colors.white38,width: 1),borderRadius: BorderRadius.circular(20)),
                      ),): Container(
                        width: size.width*0.24,
                        height: size.height*0.6,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/h2.jpg"),fit: BoxFit.cover),
                            border: Border.all(color: Colors.white38,width: 1),borderRadius: BorderRadius.circular(20)),
                      )));
                    },
                  )
                  ,),
                Positioned(
                    top: size.height*0.458,
                    right: size.width*0.15,
                    child: AnimatedBuilder(
                      animation: controller3,
                      builder: (BuildContext context,Widget? child){
                        return GestureDetector(
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: HoverCrossFadeWidget(
                              firstChild:Opacity(
                                opacity: aniamtion3.value,
                                child:  GestureDetector(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: size.height*0.120,
                                      ),
                                      Row(
                                        children: [
                                          Text("Wall Fabric",style: TextStyle(fontSize: size.width*0.02,color: Colors.white,fontFamily: 'tw',decoration: TextDecoration.none),)
                                        ],
                                      )
                                    ],
                                  ),
                                  onTap: null,
                                ),
                              ),
                              secondChild: Opacity(
                                opacity: 1,
                                child: GestureDetector(
                                  child: SizedBox(
                                    width: size.width*0.12,
                                    height: size.width*0.17,
                                    child: Opacity(opacity: 0.8,child: Image(image: AssetImage("assets/images/png.png"),),),
                                  ),
                                  onTap: null,
                                ),
                              ), duration: Duration(milliseconds: 200),
                            ),
                            onHover: (event){
                              setState(() {
                                change2=false;
                              });
                            },
                            onExit: (event){
                              setState(() {
                                change2=true;
                              });
                            },
                          ),
                          onTap: (){
                            decselect=0;
                            page1(2, 3);
                            Navigator.pushNamed(context, "/Product");
                          },
                        );
                      },
                    )),
                /////////////////////////
                Positioned(
                  top: size.height*0.35,
                  left: size.width*0.09,
                  child:
                  AnimatedBuilder(
                    animation: controller3,
                    builder: (BuildContext context , Widget? child){
                      return Opacity(opacity: aniamtion3.value ,child: AnimatedSwitcher(duration :Duration(milliseconds: 200),child: change3 ? Opacity(key: Key('1'),opacity: 1,child: Container(
                        width: size.width*0.24,
                        height: size.height*0.6,
                        decoration: BoxDecoration(border: Border.all(color: Colors.white38,width: 1),borderRadius: BorderRadius.circular(20)),
                      ),): Container(
                        width: size.width*0.24,
                        height: size.height*0.6,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/h3.jpg"),fit: BoxFit.cover),
                            border: Border.all(color: Colors.white38,width: 1),borderRadius: BorderRadius.circular(20)),
                      )));
                    },
                  )
                  ,),
                Positioned(
                    top: size.height*0.4751,
                    left: size.width*0.125,
                    child: AnimatedBuilder(
                      animation: controller3,
                      builder: (BuildContext context,Widget? child){
                        return GestureDetector(
                          child: MouseRegion(
                            child: HoverCrossFadeWidget(
                              firstChild:Opacity(
                                opacity: aniamtion3.value,
                                child:  GestureDetector(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: size.height*0.11,
                                      ),
                                      Row(children: [
                                        SizedBox(
                                          width: size.width*0.013,
                                        ),
                                        Center(
                                          child: Text("Decorative Tile",style: TextStyle(fontSize: size.width*0.02,color: Colors.white,fontFamily: 'tw',decoration: TextDecoration.none),),
                                        )
                                      ],),
                                    ],
                                  ),
                                  onTap: null,
                                ),
                              ),
                              secondChild: Opacity(
                                opacity: 1,
                                child: GestureDetector(
                                  child: SizedBox(
                                    width: size.width*0.16,
                                    height: size.width*0.13,
                                    child: Opacity(opacity: 0.8,child: Image(image: AssetImage("assets/images/png.png"),),),
                                  ),
                                  onTap: null,
                                ),
                              ), duration: Duration(milliseconds: 200),
                            ),
                            onHover: (event){
                              setState(() {
                                change3=false;
                              });
                            },
                            onExit: (event){
                              setState(() {
                                change3=true;
                              });
                            },
                          ),
                          onTap: (){
                            pictitle="Decorative Tile";
                            decselect=4;
                            page2(title1, 4);
                            page3(4);
                            Navigator.pushNamed(context, "/product2");

                          },
                        );
                      },
                    )),
                Positioned(
                    top: size.height*0.84,
                    right: size.width*0.062,
                    child: GestureDetector(
                      child: SizedBox(
                        width: size.width*0.02,
                        height: size.width*0.03,
                        child: Image(image: AssetImage("assets/images/scroll.png"),fit: BoxFit.cover,)
                      ),
                      onTap: (){
                        _controller.animateTo(
                            _controller.position.maxScrollExtent,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.fastOutSlowIn
                        );
                      },
                    )
                ),
                Positioned(
                    top: size.height*0.84,
                    left: size.width*0.062,
                    child: GestureDetector(
                      child: SizedBox(
                          width: size.width*0.02,
                          height: size.width*0.03,
                          child: Image(image: AssetImage("assets/images/scroll.png"),fit: BoxFit.cover,)
                      ),
                      onTap: (){
                        _controller.animateTo(
                            _controller.position.maxScrollExtent,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.fastOutSlowIn
                        );
                      },
                    )
                )
              ],
            ),
            SizedBox(
              width: size.width,
              height: size.height*0.2,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: size.height*0.08,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: size.width*0.05,
                        ),
                        GestureDetector(
                          child: SizedBox(
                              width: size.width*0.031,
                              height: size.width*0.031,
                              child: Image(image: AssetImage("assets/images/insta.png"),)),
                          onTap: () async {
                            String Url="https://www.instagram.com/rallex.artsky/?hl=en";
                            var urllauncher = await canLaunch(Url);
                            if(urllauncher){
                              await launch(Url);
                            }
                          },
                        ),
                        GestureDetector(
                          child: SizedBox(
                            width: size.width*0.029,
                            height: size.width*0.029,
                            child: Image(image: AssetImage("assets/images/phone.png"),),
                          ),
                          onTap: () async {
                            String Url = "https://www.linkedin.com/in/rallex-company";
                            var urllauncher = await canLaunch(Url);
                            if (urllauncher) {
                              await launch(Url);
                            }
                          },
                        ),
                        SizedBox(
                          width: size.width*0.40,
                          height: size.width*0.045,
                          child: Image(image: AssetImage("assets/images/address.png"),),
                        ),
                        GestureDetector(
                          child: SizedBox(
                            width: size.width*0.031,
                            height: size.width*0.031,
                            child: Image(image: AssetImage("assets/images/facebook.png"),),
                          ),
                          onTap: () async {
                            String Url = "https://www.pinterest.co/rallexCompany";
                            var urllauncher = await canLaunch(Url);
                            if (urllauncher) {
                              await launch(Url);
                            }
                          },
                        ),
                        GestureDetector(
                          child: SizedBox(
                            width: size.width*0.033,
                            height: size.width*0.033,
                            child: Image(image: AssetImage("assets/images/youtube.png"),),),
                          onTap: () async {
                            String Url="https://www.youtube.com/channel/UCVb1TnlT0cGwEi8lba-SWCw";
                            var urllauncher = await canLaunch(Url);
                            if(urllauncher){
                              await launch(Url);
                            }
                          },
                        ),
                        SizedBox(
                          width: size.width*0.05,
                        ),


                      ],
                    )
                  ],
                ),
              ),
            )
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
  product1(int index)async{
    if(index==1){
      partsdectitle.clear();
      partsdecid.clear();
      partsdecdis.clear();
      partsdecphoto.clear();
      Map <String,String> data = {
        'albumId': "5",
      };
      print("dec parts");
      var body = json.encode(data);
      String url = "https://api.rollax.torphin.com/api/Home/GetPartOfAlbum?albumId=5";
      final response = await http.get(Uri.parse(url));
      decparts=json.decode(response.body);
      print(response.body);
      if(decparts.length!=0){
        for(int i=0;i<decparts.length;i++){
          decpartstitle=json.decode(response.body)[i]["title"];
          partsdectitle.add(decpartstitle);
        }
        for(int i=0;i<decparts.length;i++){
          decpartsid=json.decode(response.body)[i]["id"];
          partsdecid.add(decpartsid);
        }
        for(int i=0;i<decparts.length;i++){
          decpartsdis=json.decode(response.body)[i]["description"];
          partsdecdis.add(decpartsdis);
        }
        for(int i=0;i<decparts.length;i++){
          decpartsphoto=json.decode(response.body)[i]["mainPicture"];
          partsdecphoto.add(decpartsphoto);
        }
        parttitle=partsdectitle;
        partid=partsdecid;
        partdes=partsdecdis;
        partpic=partsdecphoto;
        // print(partsdectitle);
        // print("partid");
        // print(partsdecid);
        // print(partsdecdis);
        // print(partsdecphoto);
      }
      setState(() {
      });
    }else if(index==2){
      //wallpaperalbumtitle.clear();
      albumwalltitle.clear();
      albumwallid.clear();
      albumwalldis.clear();
      albumwallphoto.clear();
      Map <String,String> data = {
        'categoryId': "0",
      };
      print("p2");
      var body = json.encode(data);
      String url = "https://api.rollax.torphin.com/api/Home/GetWallpapers";
      final response = await http.get(Uri.parse(url));
      wallpaperalbum=json.decode(response.body);
      if(wallpaperalbum.length!=0){
        for(int i=0;i<wallpaperalbum.length;i++){
          wallpaperalbumtitle=json.decode(response.body)[i]["title"];
          albumwalltitle.add(wallpaperalbumtitle);
        }
        for(int i=0;i<wallpaperalbum.length;i++){
          wallpaperalbumid=json.decode(response.body)[i]["id"];
          albumwallid.add(wallpaperalbumid);
        }
        for(int i=0;i<wallpaperalbum.length;i++){
          wallpaperalbumdis=json.decode(response.body)[i]["description"];
          albumwalldis.add(wallpaperalbumdis);
        }
        for(int i=0;i<wallpaperalbum.length;i++){
          wallpaperalbumphoto=json.decode(response.body)[i]["mainPicture"];
          albumwallphoto.add(wallpaperalbumphoto);
        }
        print(albumwalltitle);
        print(albumwallid);
        print("partid wallpaper");
        print(albumwalldis);
        print(albumwallphoto);
      }
      setState(() {
      });
    }else if(index==3){
      albumfabtitle.clear();
      albumfabid.clear();
      albumfabdis.clear();
      albumfabphoto.clear();
      Map <String,String> data = {
        'categoryId': "0",
      };
      print("p3");
      var body = json.encode(data);
      String url = "https://api.rollax.torphin.com/api/Home/GetWallFabric";
      final response = await http.get(Uri.parse(url));
      wallfabricalbum=json.decode(response.body);
      if(wallfabricalbum.length!=0){
        for(int i=0;i<wallfabricalbum.length;i++){
          wallfabalbumtitle=json.decode(response.body)[i]["title"];
          albumfabtitle.add(wallfabalbumtitle);
        }
        for(int i=0;i<wallfabricalbum.length;i++){
          wallfabalbumid=json.decode(response.body)[i]["id"];
          albumfabid.add(wallfabalbumid);
        }
        for(int i=0;i<wallfabricalbum.length;i++){
          wallfabalbumdis=json.decode(response.body)[i]["description"];
          albumfabdis.add(wallfabalbumdis);
        }
        for(int i=0;i<wallfabricalbum.length;i++){
          wallfabalbumphoto=json.decode(response.body)[i]["mainPicture"];
          albumfabphoto.add(wallfabalbumphoto);
        }
        // print(albumfabtitle);
        // print(albumfabid);
        // print(albumfabdis);
        // print(albumfabphoto);
      }
      setState(() {

      });
    }
  }
}
List wallpaperalbum=[];
int Tabbarindex=0;
List decparts=[];
var decpartstitle;
List partsdectitle=[];
List partsdecid=[];
List partsdecdis=[];
List partsdecphoto=[];
var decpartsdis;
var decpartsphoto;
var decpartsid;
////////////////////////////////////
List decproducts=[];
var decprotitle;
List prodectitle=[];
List prodecid=[];
List prodecdis=[];
List prodecphoto=[];
var decprodis;
var decprophoto;
var decproid;
/////////////////////////////////
var wallfabalbumtitle;
List wallfabricalbum=[];
List albumfabtitle=[];
List albumfabid=[];
List albumfabdis=[];
List albumfabphoto=[];
var wallfabalbumdis;
var wallfabalbumphoto;
var wallfabalbumid;
///////////////////////////
List wallfabparts=[];
var wallfabpartstitle;
List partsfabtitle=[];
List partsfabid=[];
List partsfabdis=[];
List partsfabphoto=[];
var wallfabpartsdis;
var wallfabpartsphoto;
var wallfabpartsid;
////////////////////////////////////
List wallfabproducts=[];
var wallfabprotitle;
List profabtitle=[];
List profabid=[];
List profabdis=[];
List profabphoto=[];
var wallfabprodis;
var wallfabprophoto;
var wallfabproid;
/////////////////////////////////
var wallpaperalbumtitle;
List albumwalltitle=[];
List albumwallid=[];
List albumwalldis=[];
List albumwallphoto=[];
var wallpaperalbumdis;
var wallpaperalbumphoto;
var wallpaperalbumid;
////////////////////////////////////
List wallpaperparts=[];
var wallpaperpartstitle;
List partswalltitle=[];
List partswallid=[];
List partswalldis=[];
List partswallphoto=[];
var wallpaperpartsdis;
var wallpaperpartsphoto;
var wallpaperpartsid;
////////////////////////////////////
List wallpaperproducts=[];
var wallpaperprotitle;
List prowalltitle=[];
List prowallid=[];
List prowalldis=[];
List prowallphoto=[];
var wallpaperprodis;
var wallpaperprophoto;
var wallpaperproid;
///////////////////////////////////
