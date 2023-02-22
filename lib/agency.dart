import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:site/agencymobile.dart';
import 'package:site/datalink.dart';
import 'package:flutter_draggable_gridview/flutter_draggable_gridview.dart';
import 'package:url_launcher/url_launcher.dart';

int nummnumber=0;
class agency extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return agencystate();
  }

}
class agencystate extends State<agency>{
  PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    final _platform = Theme.of(context).platform;
    return (size.height>=size.width)?agencymobile():Container(
      color: Colors.black,
      child: Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Column(
              children: [
                SizedBox(
                  height: size.height*0.04,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(padding: EdgeInsets.only(top:size.height*0.0,left: size.width*0.00),child: GestureDetector(
                              child: SizedBox(
                                  width: size.width*0.02,
                                  height: size.width*0.03,
                                  child: Image(image: AssetImage("assets/images/scrollp.png"),fit: BoxFit.cover,)
                              ),
                              onTap: (){
                                _pageController.previousPage(duration: Duration(milliseconds: 1000), curve: Curves.ease);
                              },

                          ),),
                          SizedBox(height: size.height*0.02,),
                          Padding(padding: EdgeInsets.only(top:size.height*0.0,left: size.width*0.00),child: GestureDetector(
                              child: SizedBox(
                                  width: size.width*0.02,
                                  height: size.width*0.03,
                                  child: Image(image: AssetImage("assets/images/scroll.png"),fit: BoxFit.cover,)
                              ),
                              onTap: (){
                                _pageController.nextPage(duration: Duration(milliseconds: 1000), curve: Curves.ease);
                              },
                          ),)
                        ],
                      ),
                      width: size.width*0.1,
                      height: size.height*0.2,
                    ),
                    SizedBox(
                      width: size.width*0.7,
                      height: size.height*0.7,
                      child: GridView.builder(
                          controller: _pageController,
                          itemCount: 10,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                          itemBuilder: (BuildContext context,int index){
                            return GestureDetector(
                              child: SizedBox(
                                  width: size.width*0.6,
                                  height: size.height*0.3,
                                  child: Container(
                                    margin: EdgeInsets.only(left: size.width*0.01,bottom: size.width*0.01),
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(border: Border.all(color: Colors.white38,width: 1),borderRadius: BorderRadius.circular(20)),
                                    child: Center(
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: size.height*0.02,
                                          ),
                                          SizedBox(
                                            width: size.width*0.27,
                                            height: size.width*0.27,
                                            child: Container(
                                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/loc.jpg")),borderRadius: BorderRadius.circular(20)),
                                            ),
                                          ),
                                          SizedBox(
                                            height: size.height*0.02,
                                          ),
                                          Text("Agency Number$index",style: TextStyle(fontFamily:'sa',color: Colors.white,decoration: TextDecoration.none,fontSize: size.width*0.015),)

                                        ],
                                      ),
                                    ),
                                  )
                              ),
                              onTap: (){
                                Navigator.pushNamed(context, "/Agency2");
                                // print(index);
                              },
                            );
                          }
                      ),
                    ),
                    SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(padding: EdgeInsets.only(top:size.height*0.0,left: size.width*0.00),child: GestureDetector(
                              child: SizedBox(
                                  width: size.width*0.02,
                                  height: size.width*0.03,
                                  child: Image(image: AssetImage("assets/images/scrollp.png"),fit: BoxFit.cover,)
                              ),
                              onTap: (){
                                _pageController.previousPage(duration: Duration(milliseconds: 1000), curve: Curves.ease);
                              },

                          ),),
                          SizedBox(height: size.height*0.02,),
                          Padding(padding: EdgeInsets.only(top:size.height*0.0,left: size.width*0.00),child: GestureDetector(
                              child: SizedBox(
                                  width: size.width*0.02,
                                  height: size.width*0.03,
                                  child: Image(image: AssetImage("assets/images/scroll.png"),fit: BoxFit.cover,)
                              ),
                              onTap: (){
                                _pageController.nextPage(duration: Duration(milliseconds: 1000), curve: Curves.ease);
                              },

                          ),)
                        ],
                      ),
                      width: size.width*0.1,
                      height: size.height*0.2,
                    ),],
                ),
              ],
            ),
          )
      ),
    );
  }

}