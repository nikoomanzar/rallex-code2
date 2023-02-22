import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'datalink.dart';
class Product0Mobile extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return Product0MobileState();
  }

}
class Product0MobileState extends State<Product0Mobile>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    product1(1);
    product1(2);
    product1(3);
  }
  @override
  Widget build(BuildContext context) {
    final _platform = Theme.of(context).platform;
    var size=MediaQuery.of(context).size;
    return  Container(
      color: Colors.black,
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: size.height*0.03,
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
            GestureDetector(
              child: SizedBox(
                width: size.width*0.4,
                height: size.width*0.4,
                child: Container(
                  margin: EdgeInsets.only(left: size.width*0.002,bottom: size.width*0.002),
                  decoration: BoxDecoration(border: Border.all(color: Colors.white38,width: 1),borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height*0.02,
                        ),
                        SizedBox(
                          width: size.width*0.3,
                          height: size.width*0.27,
                          child: Container(
                            decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://rallex.co/wallpaper/RASHEL/b part 1/cover.jpg'),fit: BoxFit.cover),borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                        SizedBox(
                          height: size.height*0.02,
                        ),
                        Text("WALLPAPER",style: TextStyle(fontFamily:'tw',color: Colors.white,decoration: TextDecoration.none,fontSize: size.width*0.025),)

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
            SizedBox(
              height: size.height*0.02,
            ),
            GestureDetector(
              child: SizedBox(
                width: size.width*0.4,
                height: size.width*0.4,
                child: Container(
                  margin: EdgeInsets.only(left: size.width*0.002,bottom: size.width*0.002),
                  decoration: BoxDecoration(border: Border.all(color: Colors.white38,width: 1),borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height*0.02,
                        ),
                        SizedBox(
                          width: size.width*0.3,
                          height: size.width*0.27,
                          child: Container(
                            decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://rallex.co/wallfabric/S104/1/محصولات/S4-06-(2).jpg'),fit: BoxFit.cover),borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                        SizedBox(
                          height: size.height*0.02,
                        ),
                        Text("WALLFABRIC",style: TextStyle(fontFamily:'tw',color: Colors.white,decoration: TextDecoration.none,fontSize: size.width*0.025),)

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
            SizedBox(
              height: size.height*0.02,
            ),
            GestureDetector(
              child: SizedBox(
                width: size.width*0.4,
                height: size.width*0.4,
                child: Container(
                  margin: EdgeInsets.only(left: size.width*0.002,bottom: size.width*0.002),
                  decoration: BoxDecoration(border: Border.all(color: Colors.white38,width: 1),borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height*0.02,
                        ),
                        SizedBox(
                          width: size.width*0.3,
                          height: size.width*0.27,
                          child: Image(image: NetworkImage('https://rallex.co/decorativetile/تایل های استیل/cover.jpg'),fit: BoxFit.cover,),
                        ),
                        SizedBox(
                          height: size.height*0.02,
                        ),
                        Text("DECORATIVE TILE",style: TextStyle(fontFamily:'tw',color: Colors.white,decoration: TextDecoration.none,fontSize: size.width*0.025),)

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
        ),
      ),
    );
  }
  product1(int index)async{
    if(index==1){
      // partsdectitle.clear();
      // partsdecid.clear();
      // partsdecdis.clear();
      // partsdecphoto.clear();
      Map <String,String> data = {
        'albumId': "5",
      };
      print("dec parts");
      var body = json.encode(data);
      String url = "https://api.rollax.torphin.com/api/Home/GetPartOfAlbum?albumId=5";
      final response = await http.get(Uri.parse(url));
      decparts=json.decode(response.body);
      print(response.body);
      if(decparts.length!=0){
        for(int i=0;i<decparts.length;i++){
          decpartstitle=json.decode(response.body)[i]["title"];
          partsdectitle.add(decpartstitle);
        }
        for(int i=0;i<decparts.length;i++){
          decpartsid=json.decode(response.body)[i]["id"];
          partsdecid.add(decpartsid);
        }
        for(int i=0;i<decparts.length;i++){
          decpartsdis=json.decode(response.body)[i]["description"];
          partsdecdis.add(decpartsdis);
        }
        for(int i=0;i<decparts.length;i++){
          decpartsphoto=json.decode(response.body)[i]["mainPicture"];
          partsdecphoto.add(decpartsphoto);
        }
        parttitle=partsdectitle;
        partid=partsdecid;
        partdes=partsdecdis;
        partpic=partsdecphoto;
        print(partsdectitle);
        print(partsdecid);
        print(partsdecdis);
        print(partsdecphoto);
      }
      setState(() {
      });
    }else if(index==2){
      //wallpaperalbumtitle.clear();
      albumwalltitle.clear();
      albumwallid.clear();
      albumwalldis.clear();
      albumwallphoto.clear();
      Map <String,String> data = {
        'categoryId': "0",
      };
      print("p2");
      var body = json.encode(data);
      String url = "https://api.rollax.torphin.com/api/Home/GetWallpapers";
      final response = await http.get(Uri.parse(url));
      wallpaperalbum=json.decode(response.body);
      if(wallpaperalbum.length!=0){
        for(int i=0;i<wallpaperalbum.length;i++){
          wallpaperalbumtitle=json.decode(response.body)[i]["title"];
          albumwalltitle.add(wallpaperalbumtitle);
        }
        for(int i=0;i<wallpaperalbum.length;i++){
          wallpaperalbumid=json.decode(response.body)[i]["id"];
          albumwallid.add(wallpaperalbumid);
        }
        for(int i=0;i<wallpaperalbum.length;i++){
          wallpaperalbumdis=json.decode(response.body)[i]["description"];
          albumwalldis.add(wallpaperalbumdis);
        }
        for(int i=0;i<wallpaperalbum.length;i++){
          wallpaperalbumphoto=json.decode(response.body)[i]["mainPicture"];
          albumwallphoto.add(wallpaperalbumphoto);
        }
        // print(albumwalltitle);
        // print(albumwallid);
        // print(albumwalldis);
        // print(albumwallphoto);
      }
      setState(() {
      });
    }else if(index==3){
      albumfabtitle.clear();
      albumfabid.clear();
      albumfabdis.clear();
      albumfabphoto.clear();
      Map <String,String> data = {
        'categoryId': "0",
      };
      print("p3");
      var body = json.encode(data);
      String url = "https://api.rollax.torphin.com/api/Home/GetWallFabric";
      final response = await http.get(Uri.parse(url));
      wallfabricalbum=json.decode(response.body);
      if(wallfabricalbum.length!=0){
        for(int i=0;i<wallfabricalbum.length;i++){
          wallfabalbumtitle=json.decode(response.body)[i]["title"];
          albumfabtitle.add(wallfabalbumtitle);
        }
        for(int i=0;i<wallfabricalbum.length;i++){
          wallfabalbumid=json.decode(response.body)[i]["id"];
          albumfabid.add(wallfabalbumid);
        }
        for(int i=0;i<wallfabricalbum.length;i++){
          wallfabalbumdis=json.decode(response.body)[i]["description"];
          albumfabdis.add(wallfabalbumdis);
        }
        for(int i=0;i<wallfabricalbum.length;i++){
          wallfabalbumphoto=json.decode(response.body)[i]["mainPicture"];
          albumfabphoto.add(wallfabalbumphoto);
        }
        // print(albumfabtitle);
        // print(albumfabid);
        // print(albumfabdis);
        // print(albumfabphoto);
      }
      setState(() {

      });
    }
  }

}
List wallpaperalbum=[];
int Tabbarindex=0;
List decparts=[];
var decpartstitle;
List partsdectitle=[];
List partsdecid=[];
List partsdecdis=[];
List partsdecphoto=[];
var decpartsdis;
var decpartsphoto;
var id2;
var decpartsid;
////////////////////////////////////
List decproducts=[];
var decprotitle;
List prodectitle=[];
List prodecid=[];
List prodecdis=[];
List prodecphoto=[];
var decprodis;
var decprophoto;
var decproid;
/////////////////////////////////
var wallfabalbumtitle;
List wallfabricalbum=[];
List albumfabtitle=[];
List albumfabid=[];
List albumfabdis=[];
List albumfabphoto=[];
var wallfabalbumdis;
var wallfabalbumphoto;
var wallfabalbumid;
///////////////////////////
List wallfabparts=[];
var wallfabpartstitle;
List partsfabtitle=[];
List partsfabid=[];
List partsfabdis=[];
List partsfabphoto=[];
var wallfabpartsdis;
var wallfabpartsphoto;
var wallfabpartsid;
////////////////////////////////////
List wallfabproducts=[];
var wallfabprotitle;
List profabtitle=[];
List profabid=[];
List profabdis=[];
List profabphoto=[];
var wallfabprodis;
var wallfabprophoto;
var wallfabproid;
/////////////////////////////////
var wallpaperalbumtitle;
List albumwalltitle=[];
List albumwallid=[];
List albumwalldis=[];
List albumwallphoto=[];
var wallpaperalbumdis;
var wallpaperalbumphoto;
var wallpaperalbumid;
////////////////////////////////////
List wallpaperparts=[];
var wallpaperpartstitle;
List partswalltitle=[];
List partswallid=[];
List partswalldis=[];
List partswallphoto=[];
var wallpaperpartsdis;
var wallpaperpartsphoto;
var wallpaperpartsid;
////////////////////////////////////
List wallpaperproducts=[];
var wallpaperprotitle;
List prowalltitle=[];
List prowallid=[];
List prowalldis=[];
List prowallphoto=[];
var wallpaperprodis;
var wallpaperprophoto;
var wallpaperproid;
///////////////////////////////////