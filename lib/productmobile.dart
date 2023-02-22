import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:site/Widget/BackGroundVideo.dart';
import 'package:site/datalink.dart';
import 'package:url_launcher/url_launcher.dart';
String pictitle="";
String filmadress="";
int inn=0;
class ProductMobile extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ProductMobilestate();
  }

}
class ProductMobilestate extends State<ProductMobile> with TickerProviderStateMixin{
  int examplenumber=0;
  bool opc = true;
  late AnimationController controller;
  late Animation<double> aniamtion;
  late AnimationController controller2;
  late Animation<double> aniamtion2;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new AnimationController(vsync: this,duration: Duration(milliseconds: 1000));
    aniamtion= Tween(begin: 0.09,end: 1.00).animate(new CurvedAnimation(parent: controller, curve: Curves.easeInBack));
    controller2 = new AnimationController(vsync: this,duration: Duration(milliseconds: 1000));
    aniamtion2= Tween(begin: 0.09,end: 1.00).animate(new CurvedAnimation(parent: controller, curve: Curves.easeInBack));
  }
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    final _platform = Theme.of(context).platform;
    return Container(
      color: Colors.black,
      child: Stack(
        children: [
          Positioned(
              top: size.height*0.04,
              left: size.width*0.285,
              child: SizedBox(
                  width: size.width*0.41,
                  height: size.height*0.14,
                  child: GestureDetector(
                    child: Image(image: AssetImage("assets/images/logo.png")),
                    onTap: (){
                      Navigator.pushNamed(context, "/Home");
                    },
                  )
              )
          ),
          Positioned(
              top: size.height*0.14,
              right: size.width*0.05,
              child: SizedBox(
                width: size.width*0.06,
                height: size.width*0.06,
                child: GestureDetector(
                  child: Image(image: AssetImage("assets/images/Cbutton.png"),fit: BoxFit.cover,),
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
                ),
              )
          ),
          Positioned(
            top: size.height*0.065,
            right: size.width*0.05,
            child: SizedBox(
              width: size.width*0.06,
              height: size.width*0.06,
              child: GestureDetector(
                child: Image(image: AssetImage("assets/images/Mbutton.png"),fit: BoxFit.cover,),
                onTap: (){
                  Navigator.pushNamed(context, "/Menu");
                },
              ),
            ),
          ),
          Positioned(
              top: size.height*0.065,
              left: size.width*0.05,
              child: Opacity(opacity: 1,
                child: SizedBox(
                  width: size.width*0.06,
                  height: size.width*0.06,
                  child: GestureDetector(
                    child: Image(image: AssetImage("assets/images/tl.png"),),
                    onTap: (){
                      setState(() async {
                        String Url="https://t.me/RALLEX_CO";
                        var urllauncher = await canLaunch(Url);
                        if(urllauncher){
                          await launch(Url);
                        }
                      });
                    },
                  ),
                ),
              )),
          Positioned(
              top: size.height*0.14,
              left: size.width*0.05,
              child: Opacity(
                opacity: 1,
                child: GestureDetector(
                  onTap: () async {
                    String Url="http://api.whatsapp.com/send?phone=989120898229";
                    var urllauncher = await canLaunch(Url);
                    if(urllauncher){
                      await launch(Url);
                    }
                  },
                  child: SizedBox(
                    width: size.width*0.06,
                    height: size.width*0.06,
                    child: Image(image: AssetImage("assets/images/wh.png"),),
                  ),
                ),
              )),
          Positioned(
              top: size.height*0.26,
              child: SizedBox(
                width: size.width*0.9,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(left: size.width*0.6),
                        child: Text("کاغذ دیورای artecasa",style: TextStyle(fontFamily:'sa',color: Colors.white,decoration: TextDecoration.none,fontSize: size.width*0.03),),),
                      SizedBox(
                        height: size.height*0.008,
                      ),
                      Padding(padding: EdgeInsets.only(left: size.width*0.10),child: Text(Text2,
                        style: TextStyle(color: Colors.white,fontFamily: 'sa',decoration: TextDecoration.none,fontSize: size.width*0.022),),),
                    ],
                  ),
                ),
              )
          ),
          Positioned(
              top: size.height*0.4,
              left: size.width*0.025,
              child: !opc?AnimatedBuilder(animation: controller, builder: (BuildContext context,Widget? child){
                  return Opacity(opacity: aniamtion.value,child: AnimatedSwitcher(child: Visibility(
                    child: GestureDetector(
                      child: Container(
                        width: size.width*0.95,
                        height: size.height*0.35,
                        decoration:BoxDecoration(color: Colors.black,border: Border.all(color: Colors.white38,width: 1),borderRadius: BorderRadius.circular(20)),
                        child: SizedBox(
                          width: size.width*0.95,
                          height: size.height*0.35,
                          child: Container(
                            width: size.width*0.95,
                            height: size.height*0.35,
                            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: size.width*0.3,
                                ),
                                FittedBox(
                                  fit: BoxFit.cover,
                                  child: SizedBox(
                                    width: size.width*0.25,
                                    height: size.height*0.25,
                                    child: Container(
                                      width: size.width*0.25,
                                      height: size.height*0.25,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                                      child: VideoApp(assets: filmadress,),
                                    ),

                                  ),
                                ),
                                SizedBox(
                                  width: size.width*0.15,
                                ),
                                GestureDetector(
                                    child: Container(
                                      width: size.height*0.05,
                                      height: size.height*0.05,
                                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                                      child: Center(
                                        child: Icon(Icons.download_rounded,size:size.width*0.04,color: Colors.black,)
                                      ),
                                    ),
                                    onTap: () async {
                                      if(inn==1){
                                        String Url="https://rallex.co/RallexVideo/Ink In Motion Orginal.mp4";
                                        var urllauncher = await canLaunch(Url);
                                        if(urllauncher){
                                          await launch(Url);
                                        }
                                      }else if (inn==2){
                                        String Url="https://rallex.co/RallexVideo/Ink in Water Background Orginal.mp4";
                                        var urllauncher = await canLaunch(Url);
                                        if(urllauncher){
                                          await launch(Url);
                                        }
                                      }
                                    },
                                ),
                                SizedBox(
                                  width: size.width*0.02,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      onTap: (){
                        setState(() {
                          controller.reset();
                          opc=!opc;
                        });
                      },
                    ),
                    visible: !opc,
                  ),duration: Duration(seconds: 10),),);
                }):SizedBox(
                width: size.width*0.9,
                height: size.height*0.45,
                child: ListView.builder(
                  itemCount: albumpic.length,
                    itemBuilder: (BuildContext context,int index){
                    return Container(
                      margin: EdgeInsets.only(top: size.height*0.05),
                      child: Column(
                        children: [
                          GestureDetector(
                            child: Container(
                              width: size.width*0.95,
                              height: size.height*0.28,
                              decoration: BoxDecoration(border: Border.all(color: Colors.white38,width: 1),borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width*0.06,
                                  ),
                                  SizedBox(
                                    width: size.width*0.25,
                                    height: size.height*0.4,
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: size.height*0.025,
                                        ),
                                        Directionality(textDirection: TextDirection.rtl, child: Text("آلبوم"+albumtitle[index],
                                          style: TextStyle(fontFamily:'sa',decoration: TextDecoration.none,color: Colors.white,fontSize: size.width*0.025),)),
                                        Directionality(textDirection: TextDirection.rtl, child: Text(albumdes[index],
                                          style: TextStyle(fontFamily:'sa',decoration: TextDecoration.none,color: Colors.white,fontSize: size.width*0.02),)),

                                        SizedBox(
                                          height: size.height*0.015,
                                        ),
                                        Column(
                                          children: [
                                            GestureDetector(
                                              child: Container(
                                                  width: size.width*0.20,
                                                  height: size.height*0.027,
                                                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                                                  child: Center(
                                                    child: Text("مشاهده کل آلبوم",style: TextStyle(fontFamily:'sa',decoration: TextDecoration.none,fontSize: size.width*0.018,color: Colors.black),),
                                                  )
                                              ),
                                              onTap: (){
                                                page2(title2, 1);
                                                Navigator.pushNamed(context, "/product2");

                                              },
                                            ),
                                            SizedBox(
                                              height: size.height*0.005,
                                            ),
                                            GestureDetector(
                                              child: Container(
                                                  width: size.width*0.20,
                                                  height: size.height*0.027,
                                                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                                                  child: Center(
                                                    child: Text("ویدیو آلبوم",style: TextStyle(fontFamily:'sa',decoration: TextDecoration.none,fontSize: size.width*0.018,color: Colors.black),),
                                                  )
                                              ),
                                              onTap: (){
                                                setState(() {
                                                  inn=1;
                                                  filmadress="assets/film/v1.mp4";
                                                  controller.forward();
                                                  opc=!opc;
                                                });
                                              },
                                            ),
                                            SizedBox(
                                              height: size.height*0.005,
                                            ),
                                            GestureDetector(
                                              child: Container(
                                                  width: size.width*0.20,
                                                  height: size.height*0.027,
                                                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                                                  child: Center(
                                                    child: Text("نمونه های اجرایی",style: TextStyle(fontFamily:'sa',decoration: TextDecoration.none,fontSize: size.width*0.018,color: Colors.black),),
                                                  )
                                              ),
                                              onTap: (){
                                                pictitle="Wallpaper/Fridu Kalo";
                                                examplenumber=0;
                                                picturelist(examplenumber);
                                                Navigator.pushNamed(context, "/Pictures");
                                              },
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: size.width*0.15,
                                  ),
                                  SizedBox(
                                    width: size.width*0.45,
                                    height: size.width*0.45,
                                    child: Container(
                                      decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://api.rollax.torphin.com'+albumpic[index]),fit: BoxFit.cover),borderRadius: BorderRadius.circular(20)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            onTap: (){
                              id=albumid[index];
                            },
                          ),
                          SizedBox(
                            height: size.height*0.01,
                          ),
                          GestureDetector(
                            child: Container(
                              width: size.width*0.95,
                              height: size.height*0.28,
                              decoration: BoxDecoration(border: Border.all(color: Colors.white38,width: 1),borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width*0.06,
                                  ),
                                  SizedBox(
                                    width: size.width*0.25,
                                    height: size.height*0.4,
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: size.height*0.025,
                                        ),
                                        Directionality(textDirection: TextDirection.rtl, child: Text("آلبوم"+albumtitle[index+1],
                                          style: TextStyle(fontFamily:'sa',decoration: TextDecoration.none,color: Colors.white,fontSize: size.width*0.03),)),
                                        Directionality(textDirection: TextDirection.rtl, child: Text(albumdes[index+1],
                                          style: TextStyle(fontFamily:'sa',decoration: TextDecoration.none,color: Colors.white,fontSize: size.width*0.02),)),
                                        SizedBox(
                                          height: size.height*0.015,
                                        ),
                                        GestureDetector(
                                          child: Container(
                                              width: size.width*0.20,
                                              height: size.height*0.027,
                                              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                                              child: Center(
                                                child: Text("مشاهده کل آلبوم",style: TextStyle(fontFamily:'sa',decoration: TextDecoration.none,fontSize: size.width*0.018,color: Colors.black),),
                                              )
                                          ),
                                          onTap: (){
                                            page2(title1, 0);
                                            Navigator.pushNamed(context, "/product2");

                                          },
                                        ),
                                        SizedBox(
                                          height: size.height*0.005,
                                        ),
                                        GestureDetector(
                                          child: Container(
                                              width: size.width*0.20,
                                              height: size.height*0.027,
                                              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                                              child: Center(
                                                child: Text("ویدیو آلبوم",style: TextStyle(fontFamily:'sa',decoration: TextDecoration.none,fontSize: size.width*0.018,color: Colors.black),),
                                              )
                                          ),
                                          onTap: (){
                                            setState(() {
                                              inn=1;
                                              filmadress="assets/film/v2.mp4";
                                              controller.forward();
                                              opc=!opc;
                                            });
                                          },

                                        ),
                                        SizedBox(
                                          height: size.height*0.005,
                                        ),
                                        GestureDetector(
                                          child: Container(
                                              width: size.width*0.20,
                                              height: size.height*0.027,
                                              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                                              child: Center(
                                                child: Text("نمونه های اجرایی",style: TextStyle(fontFamily:'sa',decoration: TextDecoration.none,fontSize: size.width*0.018,color: Colors.black),),
                                              )
                                          ),
                                          onTap: (){
                                            pictitle="Wallpaper/Rashel";
                                            examplenumber=1;
                                            picturelist(examplenumber);
                                            Navigator.pushNamed(context, "/Pictures");
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: size.width*0.15,
                                  ),
                                  SizedBox(
                                    width: size.width*0.45,
                                    height: size.width*0.45,
                                    child: Container(
                                      decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://api.rollax.torphin.com'+albumpic[index+1]),fit: BoxFit.cover),borderRadius: BorderRadius.circular(20)),
                                    ),
                                  ),


                                ],
                              ),
                            ),
                            onTap: (){
                              id=albumid[index+1];
                            },
                          )

                        ],
                      ),
                    );
                    }
                )
                ,
              ),


          ),
        ],
      ),
    );
  }

}
int id=0;