import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:site/datalink.dart';
import 'package:flutter_draggable_gridview/flutter_draggable_gridview.dart';
import 'package:url_launcher/url_launcher.dart';


class agencymobile extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return agencymobilestate();
  }

}
class agencymobilestate extends State<agencymobile>{
  @override
  Widget build(BuildContext context) {
    final _platform = Theme.of(context).platform;
    var size=MediaQuery.of(context).size;
    return Container(
      color: Colors.black,
      child: Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Column(
              children: [
                SizedBox(
                  height: size.height*0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(padding: EdgeInsets.only(left: size.width*0.06),child: Column(
                      children: [
                        SizedBox(
                          width: size.width*0.07,
                          height: size.width*0.07,
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
                        SizedBox(
                          height: size.height*0.05,
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
                            width: size.width*0.07,
                            height: size.width*0.07,
                            child: Image(image: AssetImage("assets/images/wh.png"),),
                          ),
                        )
                      ],
                    ),)
                    ,SizedBox(
                        width: size.width*0.46,
                        height: size.height*0.16,
                        child: GestureDetector(
                          child: Image(image: AssetImage("assets/images/logo.png")),
                          onTap: (){
                            Navigator.pushNamed(context, "/Home");
                          },
                        )
                    ),
                    Padding(padding: EdgeInsets.only(right: size.width*0.06),child: Column(
                      children: [
                        SizedBox(
                          width: size.width*0.07,
                          height: size.width*0.07,
                          child: GestureDetector(
                            child: Image(image: AssetImage("assets/images/Mbutton.png"),),
                            onTap: (){
                              setState(() {
                                Navigator.pushNamed(context, "/Menu");
                              });
                            },
                          ),
                        ),SizedBox(
                          height: size.height*0.05,
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
                            width: size.width*0.07,
                            height: size.width*0.07,
                            child: Image(image: AssetImage("assets/images/Cbutton.png"),),
                          ),
                        )
                      ],
                    ),)
                  ],
                ),
                SizedBox(
                  height: size.height*0.05,
                ),
                SizedBox(
                  width: size.width*0.7,
                  height: size.height*0.7,
                  child: GridView.builder(
                      itemCount: 10,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
                      itemBuilder: (BuildContext context,int index){
                        return GestureDetector(
                          child: SizedBox(
                              width: size.width*0.6,
                              child: Container(
                                margin: EdgeInsets.only(left: size.width*0.02,bottom: size.width*0.02),
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: size.height*0.04,
                                      ),
                                      SizedBox(
                                        width: size.width*0.57,
                                        height: size.width*0.47,
                                        child: Container(
                                          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/loc.jpg"),fit: BoxFit.cover),borderRadius: BorderRadius.circular(20)),
                                        ),
                                      ),
                                      SizedBox(
                                        height: size.height*0.02,
                                      ),
                                      Text("agency number $index",style: TextStyle(fontFamily:'sa',color: Colors.white,decoration: TextDecoration.none,fontSize: size.width*0.04),)

                                    ],
                                  ),
                                ),
                              )
                          ),
                          onTap: (){
                            Navigator.pushNamed(context, "/Agency2");
                            page3(index);
                          },
                        );
                      }
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }

}