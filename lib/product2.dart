import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:site/Home.dart';
import 'package:site/datalink.dart';
import 'package:flutter_draggable_gridview/flutter_draggable_gridview.dart';
import 'package:site/product.dart';
import 'package:site/productmobile2.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
int id2=0;
int nummnumber=0;
class product2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return product2state();
  }

}
class product2state extends State<product2>{
  PageController _pageController = PageController(initialPage: 0);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    product2(Type);
  }
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    final _platform = Theme.of(context).platform;
    return (size.height>=size.width)?productmobile2():Container(
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
                  height: size.height*0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: size.width*0.0025,),
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
                        itemCount: partid.length,
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
                                            decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://api.rollax.torphin.com'+partpic[index]),fit: BoxFit.cover),borderRadius: BorderRadius.circular(20)),
                                          ),
                                        ),
                                        SizedBox(
                                          height: size.height*0.02,
                                        ),
                                        Text((inddex==4)?dectitle[index]:parttitle[index],style: TextStyle(fontFamily:'sa',color: Colors.white,decoration: TextDecoration.none,fontSize: size.width*0.015),)

                                      ],
                                    ),
                                  ),
                                )
                            ),
                            onTap: (){
                              id2=partid[index];
                              print(id2);
                              nummnumber=index;
                              if(decselect==4){
                                picturedec(index);
                              }
                              page3(index);
                              Navigator.pushNamed(context, "/product3");
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
                          Padding(padding: EdgeInsets.only(top:size.height*0.0,right: size.width*0.00),child: GestureDetector(
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
                          Padding(padding: EdgeInsets.only(top:size.height*0.0,right: size.width*0.00),child: GestureDetector(
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
                  SizedBox(width: size.width*0.0025,)],
                ),
              ],
            ),
          )
      ),
    );
  }
  product2(String Type)async{
    if(Type=="decorative"){
    }else if(Type=="wallpaper"){
      //wallpaperalbumtitle.clear();
      partswalltitle.clear();
      partswallid.clear();
      partswalldis.clear();
      partswallphoto.clear();
      Map <String,String> data = {
        'albumId': "$id",
      };
      print("p2wallpaper");
      print(id);
      var body = json.encode(data);
      String url = "https://api.rollax.torphin.com/api/Home/GetPartOfAlbum?albumId=$id";
      final response = await http.get(Uri.parse(url));
      wallpaperparts=json.decode(response.body);
      print(response.body);
      if(wallpaperparts.length!=0){
        for(int i=0;i<wallpaperparts.length;i++){
          wallpaperpartstitle=json.decode(response.body)[i]["title"];
          partswalltitle.add(wallpaperpartstitle);
        }
        for(int i=0;i<wallpaperparts.length;i++){
          wallpaperpartsid=json.decode(response.body)[i]["id"];
          partswallid.add(wallpaperpartsid);
        }
        for(int i=0;i<wallpaperparts.length;i++){
          wallpaperpartsdis=json.decode(response.body)[i]["description"];
          partswalldis.add(wallpaperpartsdis);
        }
        for(int i=0;i<wallpaperparts.length;i++){
          wallpaperpartsphoto=json.decode(response.body)[i]["mainPicture"];
          partswallphoto.add(wallpaperpartsphoto);
        }
        parttitle=partswalltitle;
        partid=partswallid;
        partdes=partswalldis;
        partpic=partswallphoto;
        print(partswalltitle);
        print(partswallid);
        print(partswalldis);
        print(partswallphoto);
        setState(() {
        });
      }
    }else if(Type=="wallfabric"){
      partsfabtitle.clear();
      partsfabid.clear();
      partsfabdis.clear();
      partsfabphoto.clear();
      Map <String,String> data = {
        'albumId': "$id",
      };
      print("p2wallfabric");
      print(id);
      var body = json.encode(data);
      String url = "https://api.rollax.torphin.com/api/Home/GetPartOfAlbum?albumId=$id";
      final response = await http.get(Uri.parse(url));
      wallfabparts=json.decode(response.body);
      print(response.body);
      if(wallfabparts!=0){
        for(int i=0;i<wallfabparts.length;i++){
          wallfabpartstitle=json.decode(response.body)[i]["title"];
          partsfabtitle.add(wallfabpartstitle);
        }
        for(int i=0;i<wallfabparts.length;i++){
          wallfabpartsid=json.decode(response.body)[i]["id"];
          partsfabid.add(wallfabpartsid);
        }
        for(int i=0;i<wallfabparts.length;i++){
          wallfabpartsdis=json.decode(response.body)[i]["description"];
          partsfabdis.add(wallfabpartsdis);
        }
        for(int i=0;i<wallfabparts.length;i++){
          wallfabpartsphoto=json.decode(response.body)[i]["mainPicture"];
          partsfabphoto.add(wallfabpartsphoto);
        }
        parttitle=partsfabtitle;
        partid=partsfabid;
        partdes=partsfabdis;
        partpic=partsfabphoto;
        print(partsfabtitle);
        print(partsfabid);
        print(partsfabdis);
        print(partsfabphoto);
        setState(() {
        });
      }
    }
  }

}