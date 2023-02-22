import 'package:flutter/material.dart';
import 'package:site/datalink.dart';
import 'package:url_launcher/url_launcher.dart';
class MobilePicture extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MobilePictureState();
  }

}
class MobilePictureState extends State<MobilePicture>{
  PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    final _platform = Theme.of(context).platform;
    var size=MediaQuery.of(context).size;
    return Container(
      color: Colors.black,
      child: Scaffold(
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
                height: size.height*0.08,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: size.width*0.75,
                    height: size.height*0.65,
                    child: GridView.builder(
                        controller: _pageController,
                        itemCount: p4.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
                        itemBuilder:
                            (BuildContext context,int index){
                          return Container(
                            margin: EdgeInsets.only(bottom: size.height*0.011,right: size.width*0.01),
                            width: size.width*0.2,
                            height: size.height*0.25,
                            decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://'+p4[index]),fit: BoxFit.cover),borderRadius: BorderRadius.all(Radius.circular(15))),
                          );
                        }
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

}