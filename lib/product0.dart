import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:site/datalink.dart';
import 'package:site/product0mobile.dart';
import 'package:url_launcher/url_launcher.dart';
class Product0 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return Product0State();
  }

}
class Product0State extends State<Product0>{
  @override
  Widget build(BuildContext context) {
    final _platform = Theme.of(context).platform;
    var size=MediaQuery.of(context).size;
    return (size.height>=size.width)?Product0Mobile():Container(
      color: Colors.black,
      child: Center(
        child: Column(
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
                    child: Text(titlle2,style: TextStyle(color: Colors.white,decoration: TextDecoration.none,fontFamily: 'sa',fontSize: size.width*0.01),),
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
              height: size.height*0.05,
            ),
            SizedBox(
                width: size.width*0.85,
                height: size.height*0.6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: SizedBox(
                        width: size.width*0.27,
                        height: size.width*0.27,
                        child: Container(
                          margin: EdgeInsets.only(left: size.width*0.02,bottom: size.width*0.02),
                          decoration: BoxDecoration(border: Border.all(color: Colors.white38,width: 1),borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: size.height*0.04,
                                ),
                                SizedBox(
                                  width: size.width*0.19,
                                  height: size.width*0.19,
                                  child: Container(
                                    decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://rallex.co/wallpaper/RASHEL/b part 1/cover.jpg'),fit: BoxFit.cover),borderRadius: BorderRadius.circular(20)),
                                  ),
                                ),
                                SizedBox(
                                  height: size.height*0.02,
                                ),
                                Text("WALLPAPER",style: TextStyle(fontFamily:'tw',color: Colors.white,decoration: TextDecoration.none,fontSize: size.width*0.015),)

                              ],
                            ),
                          )
                          ,
                        ),
                      ),
                      onTap: (){
                        page1(0, 1);
                        Navigator.pushNamed(context, "/Product");
                      },
                    ),
                    GestureDetector(
                      child: SizedBox(
                        width: size.width*0.27,
                        height: size.width*0.27,
                        child: Container(
                          margin: EdgeInsets.only(left: size.width*0.02,bottom: size.width*0.02),
                          decoration: BoxDecoration(border: Border.all(color: Colors.white38,width: 1),borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: size.height*0.04,
                                ),
                                SizedBox(
                                  width: size.width*0.19,
                                  height: size.width*0.19,
                                  child: Container(
                                    decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://rallex.co/wallfabric/S104/1/محصولات/S4-06-(2).jpg'),fit: BoxFit.cover),borderRadius: BorderRadius.circular(20)),
                                  ),
                                ),
                                SizedBox(
                                  height: size.height*0.02,
                                ),
                                Text("WALLFABRIC",style: TextStyle(fontFamily:'tw',color: Colors.white,decoration: TextDecoration.none,fontSize: size.width*0.015),)

                              ],
                            ),
                          )
                          ,
                        ),
                      ),
                      onTap: (){
                        page1(2, 3);
                        Navigator.pushNamed(context, "/Product");
                      },
                    ),
                    GestureDetector(
                      child: SizedBox(
                        width: size.width*0.27,
                        height: size.width*0.27,
                        child: Container(
                          margin: EdgeInsets.only(left: size.width*0.02,bottom: size.width*0.02),
                          decoration: BoxDecoration(border: Border.all(color: Colors.white38,width: 1),borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: size.height*0.04,
                                ),
                                SizedBox(
                                  width: size.width*0.19,
                                  height: size.width*0.19,
                                  child: Container(
                                    decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://rallex.co/decorativetile/تایل های استیل/cover.jpg'),fit: BoxFit.cover),borderRadius: BorderRadius.circular(20)),
                                  ),
                                ),
                                SizedBox(
                                  height: size.height*0.02,
                                ),
                                Text("DECORATIVE TILE",style: TextStyle(fontFamily:'tw',color: Colors.white,decoration: TextDecoration.none,fontSize: size.width*0.015),)

                              ],
                            ),
                          )
                          ,
                        ),
                      ),
                      onTap: (){
                        page2(title1, 4);
                        page3(4);
                        Navigator.pushNamed(context, "/product2");
                      },
                    )
                  ],
                )
            )
          ],
        ),
      ),
    );
  }

}