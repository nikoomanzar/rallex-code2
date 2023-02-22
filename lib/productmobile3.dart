import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:site/datalink.dart';
import 'package:site/product0mobile.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
int nummmm=0;
class productmobile3 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return productmobile3state();
  }

}
class productmobile3state extends State<productmobile3>with TickerProviderStateMixin{
  late AnimationController controller;
  late Animation<double> aniamtion;
  bool opc = true;
  int Number=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new AnimationController(vsync: this,duration: Duration(milliseconds: 1000));
    aniamtion= Tween(begin: 0.09,end: 1.00).animate(new CurvedAnimation(parent: controller, curve: Curves.easeInBack));
  }
  @override
  Widget build(BuildContext context) {
    final _platform = Theme.of(context).platform;
    var size=MediaQuery.of(context).size;
    return Scaffold(
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
              width: size.width*0.9,
              height: size.height*0.7,
              child: !opc?AnimatedBuilder(animation: controller, builder: (BuildContext context,Widget? child){
                return Opacity(opacity: aniamtion.value,child: AnimatedSwitcher(child: Visibility(
                  child: GestureDetector(
                    child: Container(
                      width: size.width*0.755,
                      height: size.height*0.7,
                      decoration:BoxDecoration(color: Colors.black,border: Border.all(color: Colors.white38,width: 1),borderRadius: BorderRadius.circular(20)),
                      child: SizedBox(
                        width: size.width*0.375,
                        height: size.height*0.4,
                        child: Container(
                          width: size.width*0.375,
                          height: size.height*0.4,
                          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text("description $Number",style: TextStyle(decoration: TextDecoration.none,color: Colors.black),),
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
              }):ListView.builder(
                  itemCount: propic.length,
                  itemBuilder: (BuildContext context, int index){
                    if(inddex==4){
                      nummmm=index;
                      //page3(index);
                      page3text(nummmm);
                    }
                    return Container(
                      margin: EdgeInsets.only(bottom: size.height*0.01),
                      decoration: BoxDecoration(border: Border.all(color: Colors.white38,width: 1),borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: size.height*0.02,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: size.height*0.02,
                              ),
                              SizedBox(
                                width: size.width*0.5,
                                height: size.height*0.30,
                                child: Container(
                                  decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://api.rollax.torphin.com'+propic[index]),fit: BoxFit.cover),borderRadius: BorderRadius.circular(20)),
                                ),
                              ),
                              SizedBox(
                                width: size.width*0.10,
                              ),
                              SizedBox(
                                width: size.width*0.18,
                                child: Center(
                                  child: Column(
                                    children: [
                                      Text((inddex==4)?direct2[0]:"",style: TextStyle(fontFamily:'sa',color: Colors.white,decoration: TextDecoration.none,fontSize: size.width*0.03),),
                                      Text((inddex==4)?direct2[1]:prodes[index],style: TextStyle(fontFamily:'sa',color: Colors.white,decoration: TextDecoration.none,fontSize: size.width*0.023),),
                                      SizedBox(height: size.height*0.02,),
                                      //GestureDetector(
                                      //  onTap: (){},
                                      //  child: Container(
                                      //    width: size.width*0.2,
                                      //    height: size.height*0.05,
                                      //    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
                                      //    child: Center(
                                      //        child:Text("نمونه از پروژه ها",style: TextStyle(fontFamily:'sa',color: Colors.black,decoration: TextDecoration.none,fontSize: size.width*0.023),)
                                      //    ),
                                      //  ),
                                      //),
                                      GestureDetector(
                                        onTap: (){
                                          setState(() {
                                            Number=index;
                                            controller.forward();
                                            opc=!opc;
                                          });
                                        },
                                        child: Container(
                                          width: size.width*0.2,
                                          height: size.height*0.04,
                                          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
                                          child: Center(
                                              child:Text("توضیحات بیشتر",style: TextStyle(fontFamily:'sa',color: Colors.black,decoration: TextDecoration.none,fontSize: size.width*0.021),)
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: (){
                                          if(titlle3=="Wallpaper/Rashel"){
                                            picturelist(1);
                                          }else if(titlle3=="Wallpaper/Fridu Kalo"){
                                            picturelist(0);
                                          }else if(titlle3=="Decorative Tile"){
                                            picturelist(4);
                                          }
                                          Navigator.pushNamed(context, "/Pictures");
                                        },
                                        child: Container(
                                          width: size.width*0.2,
                                          height: size.height*0.04,
                                          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
                                          child: Center(
                                              child:Text("نمونه های اجرا شده",style: TextStyle(fontFamily:'sa',color: Colors.black,decoration: TextDecoration.none,fontSize: size.width*0.018),)
                                          ),
                                        ),
                                      )

                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: size.height*0.02,
                          ),
                        ],
                      ),
                    );
                  }

              ),
            )
          ],
        ),
      ),
    );
  }
  product3(String Type)async{
    if(Type=="decorative"){
      prodectitle.clear();
      prodecid.clear();
      prodecdis.clear();
      prodecphoto.clear();
      print("id2 is $id2");
      Map <String,String> data = {
        'albumId': "$id2",
      };
      print("p2");
      var body = json.encode(data);
      String url = "https://api.rollax.torphin.com/api/Home/GetProductsOfPart?partId=$id2";
      final response = await http.get(Uri.parse(url));
      decproducts=json.decode(response.body);
      print(response.body);
      if(decproducts.length!=0){
        for(int i=0;i<decproducts.length;i++){
          decprotitle=json.decode(response.body)[i]["title"];
          prodectitle.add(decprotitle);
        }
        for(int i=0;i<decproducts.length;i++){
          decproid=json.decode(response.body)[i]["id"];
          prodecid.add(decproid);
        }
        for(int i=0;i<decproducts.length;i++){
          decprodis=json.decode(response.body)[i]["description"];
          prodecdis.add(decprodis);
        }
        for(int i=0;i<decproducts.length;i++){
          decprophoto=json.decode(response.body)[i]["mainPicture"];
          prodecphoto.add(decprophoto);
        }
        protitle=prodectitle;
        proid=prodecid;
        prodes=prodecdis;
        propic=prodecphoto;
        print(prodectitle);
        print(prodecid);
        print(prodecdis);
        print(prodecphoto);
        setState(() {
        });
      }
    }else if(Type=="wallfabric"){
      profabtitle.clear();
      profabid.clear();
      profabdis.clear();
      profabphoto.clear();
      Map <String,String> data = {
        'albumId': "$id2",
      };
      print("p2");
      var body = json.encode(data);
      String url = "https://api.rollax.torphin.com/api/Home/GetProductsOfPart?partId=$id2";
      final response = await http.get(Uri.parse(url));
      wallfabproducts=json.decode(response.body);
      print(response.body);
      if(wallfabproducts.length!=0){
        for(int i=0;i<wallfabproducts.length;i++){
          wallfabprotitle=json.decode(response.body)[i]["title"];
          profabtitle.add(wallfabprotitle);
        }
        for(int i=0;i<wallfabproducts.length;i++){
          wallfabproid=json.decode(response.body)[i]["id"];
          profabid.add(wallfabproid);
        }
        for(int i=0;i<wallfabproducts.length;i++){
          wallfabprodis=json.decode(response.body)[i]["description"];
          profabdis.add(wallfabprodis);
        }
        for(int i=0;i<wallfabproducts.length;i++){
          wallfabprophoto=json.decode(response.body)[i]["mainPicture"];
          profabphoto.add(wallfabprophoto);
        }
        protitle=profabtitle;
        proid=profabid;
        prodes=profabdis;
        propic=profabphoto;
        print(profabtitle);
        print(profabid);
        print(profabdis);
        print(profabphoto);
        setState(() {
        });
      }
    }else if(Type=="wallpaper"){
      prowalltitle.clear();
      prowallid.clear();
      prowalldis.clear();
      prowallphoto.clear();
      Map <String,String> data = {
        'albumId': "$id2",
      };
      print("p2");
      var body = json.encode(data);
      String url = "https://api.rollax.torphin.com/api/Home/GetProductsOfPart?partId=$id2";
      final response = await http.get(Uri.parse(url));
      wallpaperproducts=json.decode(response.body);
      print(response.body);
      if(wallpaperproducts.length!=0){
        for(int i=0;i<wallpaperproducts.length;i++){
          wallpaperprotitle=json.decode(response.body)[i]["title"];
          prowalltitle.add(wallpaperprotitle);
        }
        for(int i=0;i<wallpaperproducts.length;i++){
          wallpaperproid=json.decode(response.body)[i]["id"];
          prowallid.add(wallpaperproid);
        }
        for(int i=0;i<wallpaperproducts.length;i++){
          wallpaperprodis=json.decode(response.body)[i]["description"];
          prowalldis.add(wallpaperprodis);
        }
        for(int i=0;i<wallpaperproducts.length;i++){
          wallpaperprophoto=json.decode(response.body)[i]["mainPicture"];
          prowallphoto.add(wallpaperprophoto);
        }
        protitle=prowalltitle;
        proid=prowallid;
        prodes=prowalldis;
        propic=prowallphoto;
        print(prowalltitle);
        print(prowallid);
        print(prowalldis);
        print(prowallphoto);
        setState(() {
        });
      }
    }
  }

}