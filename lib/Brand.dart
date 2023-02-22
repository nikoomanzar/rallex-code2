import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:site/Widget/BackGroundVideo.dart';
import 'package:site/datalink.dart';
import 'package:site/productmobile.dart';
import 'package:url_launcher/url_launcher.dart';
class Brand extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return Brandstate();
  }

}
class Brandstate extends State<Brand>{
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    final _platform = Theme.of(context).platform;
    return (size.height>=size.width)?ProductMobile():Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height*0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(padding: EdgeInsets.only(left: size.width*0.05),child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(onTap: (){Navigator.pop(context);}, child: SizedBox(
                      width: size.width*0.023,
                      height: size.width*0.023,
                      child: Image(image: AssetImage("assets/images/back.png"),),
                    )),
                    SizedBox(
                      height: size.height*0.025,
                    ),
                    GestureDetector(
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
                        child: Image(image: AssetImage("assets/images/tl.png"),),
                      ),

                    ),
                    SizedBox(
                      height: size.height*0.03,
                    ),
                    SizedBox(
                      width: size.width*0.1,
                      height: size.width*0.023,
                      child: Text("Wallfabric",style: TextStyle(color: Colors.white,decoration: TextDecoration.none,fontFamily: 'sa',fontSize: size.width*0.01),),
                    )
                  ],
                ),),
                Padding(
                  padding: EdgeInsets.only(right: size.width*0.05),
                  child: SizedBox(
                      width: size.width*0.16,
                      height: size.height*0.21,
                      child: GestureDetector(
                        child: Image(image: AssetImage("assets/images/logo.png")),
                        onTap: (){
                          Navigator.pushNamed(context, "/Home");
                        },
                      )
                  ),
                ),
                Padding(padding: EdgeInsets.only(right: size.width*0.05),child: Column(
                  children: [
                    GestureDetector(onTap: (){Navigator.pushNamed(context, "/Menu");}, child: SizedBox(
                      width: size.width*0.023,
                      height: size.width*0.023,
                      child: Image(image: AssetImage("assets/images/Mbutton.png"),),

                    ),
                    ),
                    SizedBox(
                      height: size.height*0.025,
                    ),
                    GestureDetector(
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
                    SizedBox(
                      height: size.height*0.025,
                    ),
                    GestureDetector(
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
                        child: Image(image: AssetImage("assets/images/wh.png"),),
                      ),
                    ),

                  ],
                ),)
              ],
            ),
            SizedBox(
              height: size.height*0.05,
            ),
            //////////////////////////////////////////////////////
            SizedBox(
              width: size.width*0.9,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(left: size.width*0.77),
                      child: Text(Text1,style: TextStyle(color: Colors.white,fontFamily: 'sa',decoration: TextDecoration.none,fontSize: size.width*0.010),),),
                    Padding(padding: EdgeInsets.only(top:size.height*0.00,left: size.width*0.3),child: Directionality(child: Text(Text2,
                      style: TextStyle(color: Colors.white,fontFamily: 'sa',decoration: TextDecoration.none,fontSize: size.width*0.009),),textDirection: TextDirection.rtl,),),
                    SizedBox(
                      height: size.height*0.02,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height*0.03,
            ),
            SizedBox(
              width: size.width*0.95,
              height: size.height*0.48,
              child: Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.white38,width: 1),borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: size.width*0.006,
                    ),
                    SizedBox(
                      width: size.width*0.2,
                      height: size.height*0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: size.height*0.05,
                          ),
                          Directionality(textDirection: TextDirection.rtl, child: Text("برند 1",
                            style: TextStyle(fontFamily:'sa',decoration: TextDecoration.none,color: Colors.white,fontSize: size.width*0.010,),)),
                          SizedBox(
                            height: size.height*0.2,
                          ),
                          GestureDetector(
                              child: Container(
                                  width: size.width*0.17,
                                  height: size.height*0.04,
                                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                                  child: Center(
                                    child: Text("انتخاب برند",style: TextStyle(fontFamily:'sa',decoration: TextDecoration.none,fontSize: size.width*0.009,color: Colors.black),),
                                  )
                              ),
                              onTap: (){
                                Navigator.pushNamed(context, "/Product");

                              },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: size.width*0.4,
                    ),
                    SizedBox(
                      width: size.width*0.25,
                      height: size.height*0.4,
                      child: Container(
                        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://'+add2),fit: BoxFit.cover),borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    ////
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height*0.01,
            ),
            SizedBox(
              width: size.width*0.95,
              height: size.height*0.48,
              child: Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.white38,width: 1),borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: size.width*0.006,
                    ),
                    SizedBox(
                      width: size.width*0.2,
                      height: size.height*0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: size.height*0.05,
                          ),
                          Directionality(textDirection: TextDirection.rtl, child: Text("برند 2",
                            style: TextStyle(fontFamily:'sa',decoration: TextDecoration.none,color: Colors.white,fontSize: size.width*0.010,),)),
                          SizedBox(
                            height: size.height*0.2,
                          ),
                          GestureDetector(
                              child: Container(
                                  width: size.width*0.17,
                                  height: size.height*0.04,
                                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                                  child: Center(
                                    child: Text("انتخاب برند",style: TextStyle(fontFamily:'sa',decoration: TextDecoration.none,fontSize: size.width*0.009,color: Colors.black),),
                                  )
                              ),
                              onTap: (){
                                Navigator.pushNamed(context, "/Product");

                              },

                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: size.width*0.4,
                    ),
                    SizedBox(
                      width: size.width*0.25,
                      height: size.height*0.4,
                      child: Container(
                        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://'+add2),fit: BoxFit.cover),borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    ////
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height*0.02,
            ),
            Container(
              width: size.width*0.95,
              decoration: BoxDecoration(border: Border.all(color: Colors.white38,width: 1),borderRadius: BorderRadius.circular(20)),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: size.width*0.006,
                  ),
                  SizedBox(
                    width: size.width*0.2,
                    height: size.height*0.4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: size.height*0.05,
                        ),
                        Directionality(textDirection: TextDirection.rtl, child: Text("فیلم 1",
                          style: TextStyle(fontFamily:'sa',decoration: TextDecoration.none,color: Colors.white,fontSize: size.width*0.010,),)),
                        SizedBox(
                          height: size.height*0.035,
                        ),
                        SizedBox(
                          height: size.height*0.05,
                        ),
                        SizedBox(
                          height: size.height*0.008,
                        ),
                        GestureDetector(
                            child: Container(
                                width: size.width*0.13,
                                height: size.height*0.04,
                                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text("دانلود با کیفیت",style: TextStyle(fontFamily:'sa',decoration: TextDecoration.none,fontSize: size.width*0.009,color: Colors.black),),
                                )
                            ),
                            onTap: ()async{
                              String Url="https://rallex.co/RallexVideo/Ink In Motion Orginal.mp4";
                              var urllauncher = await canLaunch(Url);
                              if(urllauncher){
                                await launch(Url);
                              }
                            },

                        ),
                      ],
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.cover,
                    child: SizedBox(
                      width: size.width*0.25,
                      height: size.height*0.3,
                      child: VideoApp(assets: "assets/film/v1.mp4",),
                    ),
                  ),
                  SizedBox(
                    width: size.width*0.2,
                    height: size.height*0.4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: size.height*0.05,
                        ),
                        Directionality(textDirection: TextDirection.rtl, child: Text("فیلم 2",
                          style: TextStyle(fontFamily:'sa',decoration: TextDecoration.none,color: Colors.white,fontSize: size.width*0.010,),)),
                        SizedBox(
                          height: size.height*0.035,
                        ),

                        SizedBox(
                          height: size.height*0.05,
                        ),
                        SizedBox(
                          height: size.height*0.008,
                        ),
                        GestureDetector(
                            child: Container(
                                width: size.width*0.13,
                                height: size.height*0.04,
                                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text("دانلود با کیفیت",style: TextStyle(fontFamily:'sa',decoration: TextDecoration.none,fontSize: size.width*0.009,color: Colors.black),),
                                )
                            ),
                            onTap: ()async{
                              String Url="https://rallex.co/RallexVideo/Ink in Water Background Orginal.mp4";
                              var urllauncher = await canLaunch(Url);
                              if(urllauncher){
                                await launch(Url);
                              }
                            },
                        )
                      ],
                    ),
                  ),

                  FittedBox(
                    fit: BoxFit.cover,
                    child: SizedBox(
                      width: size.width*0.25,
                      height: size.height*0.3,
                      child: VideoApp(assets: "assets/film/v2.mp4",),
                    ),
                  ),
                  SizedBox(
                    width: size.width*0.006,
                  ),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}