import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:site/Widget/BackGroundVideo.dart';
import 'package:site/datalink.dart';
import 'package:site/productmobile.dart';
import 'package:url_launcher/url_launcher.dart';
String pictitle="";
int id=0;
String filmadress="";
int inn=0;
bool visible=true;
class Product extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return Productstate();
  }

}
class Productstate extends State<Product> with TickerProviderStateMixin{
  int examplenumber=0;
  late AnimationController controller;
  late Animation<double> aniamtion;
  bool opc = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new AnimationController(vsync: this,duration: Duration(milliseconds: 1000));
    aniamtion= Tween(begin: 0.09,end: 1.00).animate(new CurvedAnimation(parent: controller, curve: Curves.easeInBack));
  }
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
                      onTap: () async {
                        String Url="https://t.me/RALLEX_CO";
                        var urllauncher = await canLaunch(Url);
                        if(urllauncher){
                          await launch(Url);
                        }
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
                      child: Text(titlle,style: TextStyle(color: Colors.white,decoration: TextDecoration.none,fontFamily: 'sa',fontSize: size.width*0.01),),
                    )
                  ],
                ),),
                Padding(
                  padding: EdgeInsets.only(right: size.width*0.05),
                  child: GestureDetector(
                      child: SizedBox(
                        width: size.width*0.225,
                        height: size.width*0.10,
                        child: Image(image: AssetImage("assets/images/logo.png"),),
                      ),
                      onTap: (){
                        Navigator.pushNamed(context, "/Home");
                      },
                  ),
                ),
                Padding(padding: EdgeInsets.only(right: size.width*0.05),child: Column(
                  children: [
                    GestureDetector(onTap: (){Navigator.pushNamed(context, "/Menu");}, child: SizedBox(
                      width: size.width*0.023,
                      height: size.width*0.023,
                      child: Image(image: AssetImage("assets/images/Mbutton.png"),),

                    ), ),
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
                      onTap: () async {
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

                  ],
                ),)
              ],
            ),
            SizedBox(
              height: size.height*0.1,
            ),
            //////////////////////////////////////////////////////
            SizedBox(
              width: size.width*0.9,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: (visible==true)?Column(
                  children: [
                    Visibility(
                        visible:visible,
                        child: Padding(padding: EdgeInsets.only(left: size.width*0.72),
                      child: Text(Text1,style: TextStyle(color: Colors.white,fontFamily: 'sa',decoration: TextDecoration.none,fontSize: size.width*0.0115),),)),
                    SizedBox(
                      height: size.height*0.02,
                    ),
                    Visibility(
                      visible: visible,
                      child: Padding(padding: EdgeInsets.only(top:size.height*0.00,left: size.width*0.0),child: SizedBox(
                      width: size.width*0.85,
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Directionality(child: Text(Text2,
                            style: TextStyle(color: Colors.white,fontFamily: 'sa',decoration: TextDecoration.none,fontSize: size.width*0.009),),textDirection: TextDirection.rtl,),

                        ],
                      ),
                    ),),),
                    SizedBox(
                      height: size.height*0.04,
                    ),
/////////////////////////////////////ExpansionTile                    /////////////////////
                  ],
                ):Column(
                  children: [
                    Container(
                      width: size.width*0.8,
                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
                      child: ExpansionTile(
                        title: Directionality(textDirection: TextDirection.rtl,child: Text("توضیحات",style: TextStyle(decoration: TextDecoration.none,color: Colors.black,fontFamily: 'sa',fontSize: size.width*0.01),),),
                        children: [
                          SizedBox(
                            height: size.height*0.01,
                          ),
                          SizedBox(
                            width: size.width*0.6,
                            child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec imperdiet, ipsum a ultricies pulvinar, mi erat cursus mi, nec ultricies arcu nibh placerat nunc. Pellentesque tincidunt at magna vitae interdum. Cras sit amet quam ac quam sollicitudin consequat ut et dui. Fusce id lectus id metus aliquet hendrerit ac et tellus. Vestibulum ac arcu ut mauris porttitor feugiat. Pellentesque nisl nunc, sodales eget fringilla pharetra, pharetra a neque. Suspendisse sed est quis massa blandit volutpat. Praesent sed nisi imperdiet, sollicitudin turpis non, interdum ipsum. Quisque pellentesque, nunc ac faucibus consequat, ipsum turpis tempor mauris, eget commodo nulla erat eu libero. Nulla facilisi.",
                              style: TextStyle(color: Colors.black,decoration: TextDecoration.none,fontSize: size.width*0.01),),
                          ),
                          SizedBox(
                            height: size.height*0.03,
                          ),
                        ],
                      ),

                    ),
                    SizedBox(
                      height: size.height*0.06,
                    )
                  ],
                )
              ),
            ),
            SizedBox(
              height: size.height*0.005,
            ),
            SizedBox(
              width: size.width*0.95,
              height: size.height*0.48,
              child: !opc?AnimatedBuilder(animation: controller, builder: (BuildContext context,Widget? child){
                return Opacity(opacity: aniamtion.value,child: AnimatedSwitcher(child: Visibility(
                  child: GestureDetector(
                    child: Container(
                      width: size.width*0.75,
                      height: size.height*0.48,
                      decoration:BoxDecoration(color: Colors.black,border: Border.all(color: Colors.white38,width: 1),borderRadius: BorderRadius.circular(20)),
                      child: SizedBox(
                        width: size.width*0.75,
                        height: size.height*0.48,
                        child: Container(
                          width: size.width*0.75,
                          height: size.height*0.48,
                          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: size.height*0.04,
                            ),
                            Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: size.width*0.05,
                                          ),
                                          GestureDetector(onTap: (){Navigator.pop(context);}, child: SizedBox(
                                            width: size.width*0.02,
                                            height: size.width*0.02,
                                            child: Image(image: AssetImage("assets/images/bback.png"),),
                                          ))
                                        ],
                                      ),
                            SizedBox(
                              height: size.height*0.12,
                            ),
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: size.width*0.02,
                                ),
                                FittedBox(
                                  fit: BoxFit.cover,
                                  child: SizedBox(
                                    width: size.width*0.35,
                                    height: size.height*0.25,
                                    child: Container(
                                      width: size.width*0.35,
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
                                      width: size.width*0.15,
                                      height: size.height*0.05,
                                      decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(20)),
                                      child: Center(
                                        child: Text("دانلود نسخه با کیفیت",style: TextStyle(color: Colors.white,decoration: TextDecoration.none,fontFamily: 'sa',fontSize: size.width*0.008),),
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
                            )
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
              }):Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.white38,width: 1),borderRadius: BorderRadius.circular(20)),
                child: SizedBox(
                  width: size.width*0.9,
                  height: size.height*0.3,
                  child: ListView.builder(
                      itemCount: albumid.length,
                      itemBuilder:(BuildContext context , int index){
                        return Container(
                          margin: EdgeInsets.only(top: size.height*0.05),
                          child: Row(
                            children: [
                              SizedBox(
                                width: size.width*0.006,
                              ),
                              GestureDetector(
                                child:SizedBox(
                                  width: size.width*0.9,
                                  child:Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: size.width*0.2,
                                        height: size.height*0.4,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: size.height*0.02,
                                            ),
                                            Directionality(textDirection: TextDirection.rtl, child: Text("آلبوم"+albumtitle[index],
                                              style: TextStyle(fontFamily:'sa',decoration: TextDecoration.none,color: Colors.white,fontSize: size.width*0.010,),)),
                                            SizedBox(
                                              height: size.height*0.035,
                                            ),
                                            Directionality(textDirection: TextDirection.rtl, child: Text(albumdes[index],
                                              style: TextStyle(decoration: TextDecoration.none,color: Colors.white,fontSize: size.width*0.0085,fontFamily: 'sa'),)),
                                            SizedBox(
                                              height: size.height*0.05,
                                            ),
                                            GestureDetector(
                                              child: Container(
                                                  width: size.width*0.17,
                                                  height: size.height*0.04,
                                                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                                                  child: Center(
                                                    child: Text("تصاویر آلبوم",style: TextStyle(fontFamily:'sa',decoration: TextDecoration.none,fontSize: size.width*0.009,color: Colors.black),),
                                                  )
                                              ),
                                              onTap: (){
                                                if(inn1==0 && inn2==1){
                                                  page2(title2, 1);
                                                }else if (inn1==2 && inn2 ==3 ){
                                                  page2(title2, 3);
                                                }
                                                id=albumid[index];
                                                print("product2 id");
                                                print(albumid);
                                                print(id);
                                                Navigator.pushNamed(context, "/product2");

                                              },
                                            ),

                                            SizedBox(
                                              height: size.height*0.005,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: size.width*0.25,
                                        height: size.height*0.4,
                                        child: Container(
                                          decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://api.rollax.torphin.com'+albumpic[index]),fit: BoxFit.cover),borderRadius: BorderRadius.circular(20)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                onTap: (){
                                  id=albumid[index];
                                  print(id);
                                  Navigator.pushNamed(context, "/product2");

                                },
                              ),
                            ],
                          ),
                        );
                      }
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}