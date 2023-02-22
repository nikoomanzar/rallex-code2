import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:site/datalink.dart';
import 'package:flutter_draggable_gridview/flutter_draggable_gridview.dart';
import 'package:site/product0mobile.dart';
import 'package:site/productmobile.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
int id2=0;
class productmobile2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return productmobile2state();
  }

}
class productmobile2state extends State<productmobile2>{
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
                      itemCount: partpic.length,
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
                                          decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://api.rollax.torphin.com'+partpic[index]),fit: BoxFit.cover),borderRadius: BorderRadius.circular(20)),
                                        ),
                                      ),
                                      SizedBox(
                                        height: size.height*0.02,
                                      ),
                                      Text((inddex==4)?dectitle[index]:parttitle[index],style: TextStyle(fontFamily:'sa',color: Colors.white,decoration: TextDecoration.none,fontSize: size.width*0.04),)

                                    ],
                                  ),
                                ),
                              )
                          ),
                          onTap: (){
                            id2=partid[index];
                            print(id2);
                            Navigator.pushNamed(context, "/product3");
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
  product2(String Type)async{
    if(Type==" "){
      Map <String,String> data = {
        'categoryId': "0",
      };
      print("p1");
      var body = json.encode(data);
      String url = "https://api.rollax.torphin.com/api/Home/GetDecorativeTile";
      final response = await http.get(Uri.parse(url));
      print(response.body);
      setState(() {

      });
    }else if(Type=="wallpaper"){
      //wallpaperalbumtitle.clear();
      partswalltitle.clear();
      partswallid.clear();
      partswalldis.clear();
      partswallphoto.clear();
      Map <String,String> data = {
        'albumId': "$id",
      };
      print("p2");
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
      print("p2");
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