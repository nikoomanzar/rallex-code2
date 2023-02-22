import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:site/Home.dart';
import 'package:site/datalink.dart';
import 'package:site/photo.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:site/product.dart';
import 'package:site/product2.dart';
import 'package:site/productmobile3.dart';
import 'package:url_launcher/url_launcher.dart';
int nummmm=0;
class product3 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return product3state();
  }

}
class product3state extends State<product3>with TickerProviderStateMixin{
  late AnimationController controller;
  late Animation<double> aniamtion;
  bool opc = true;
  int Number=0;
  PageController _pageController = PageController(initialPage: 0);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //page3text(nummmm);
    product3(Type);
    controller = new AnimationController(vsync: this,duration: Duration(milliseconds: 1000));
    aniamtion= Tween(begin: 0.09,end: 1.00).animate(new CurvedAnimation(parent: controller, curve: Curves.easeInBack));
  }
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    final _platform = Theme.of(context).platform;
    return (size.height>=size.width)?productmobile3():Scaffold(
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
                    child: Text(titlle3,style: TextStyle(color: Colors.white,decoration: TextDecoration.none,fontFamily: 'sa',fontSize: size.width*0.01),),
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
            SizedBox(
              width: size.width*95,
              height: size.height*0.65,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: size.width*0.020,),
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
                    width: size.width*0.755,
                    height: size.height*0.65,
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
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: size.height*0.05,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: size.width*0.05,
                                          ),
                                          SizedBox(
                                            width: size.width*0.02,
                                            height: size.width*0.02,
                                            child: Image(image: AssetImage("assets/images/bback.png"),),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: size.height*0.05,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: size.width*0.6,
                                            child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec imperdiet, ipsum a ultricies pulvinar, mi erat cursus mi, nec ultricies arcu nibh placerat nunc. Pellentesque tincidunt at magna vitae interdum. Cras sit amet quam ac quam sollicitudin consequat ut et dui. Fusce id lectus id metus aliquet hendrerit ac et tellus. Vestibulum ac arcu ut mauris porttitor feugiat. Pellentesque nisl nunc, sodales eget fringilla pharetra, pharetra a neque. Suspendisse sed est quis massa blandit volutpat. Praesent sed nisi imperdiet, sollicitudin turpis non, interdum ipsum. Quisque pellentesque, nunc ac faucibus consequat, ipsum turpis tempor mauris, eget commodo nulla erat eu libero. Nulla facilisi.",
                                              style: TextStyle(color: Colors.black,decoration: TextDecoration.none,fontSize: size.width*0.01),),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: size.height*0.14,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            width: size.width*0.05,
                                          ),
                                          GestureDetector(
                                            child: SizedBox(
                                              height: size.height*0.15,
                                              width: size.width*0.15,
                                              child: Container(
                                                decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://'+p3[0]),fit: BoxFit.cover),borderRadius: BorderRadius.all(Radius.circular(20))),
                                              ),
                                            ),
                                            onTap: (){
                                              phottto(p3[0]);
                                              Navigator.pushNamed(context, "/Photo");
                                            },
                                          ),
                                          GestureDetector(
                                            child: SizedBox(
                                              height: size.height*0.15,
                                              width: size.width*0.15,
                                              child: Container(
                                                decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://'+p3[1]),fit: BoxFit.cover),borderRadius: BorderRadius.all(Radius.circular(20))),
                                              ),
                                            ),
                                            onTap: (){
                                              phottto(p3[1]);
                                              Navigator.pushNamed(context, "/Photo");
                                            },
                                          ),
                                          GestureDetector(
                                            child: SizedBox(
                                              height: size.height*0.15,
                                              width: size.width*0.15,
                                              child: Container(
                                                decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://'+p3[2]),fit: BoxFit.cover),borderRadius: BorderRadius.all(Radius.circular(20))),
                                              ),
                                            ),
                                            onTap: (){
                                              phottto(p3[2]);
                                              Navigator.pushNamed(context, "/Photo");
                                            },
                                          ),
                                          SizedBox(
                                            width: size.width*0.05,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
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
                    }):
                    ListView.builder(
                        controller: _pageController,
                        itemCount: propic.length,
                        itemBuilder: (BuildContext context, int index){

                          return GestureDetector(onTap: (){
                            phottto(p3[index]);
                            Navigator.pushNamed(context, "/Photo");
                          }, child:  Container(
                            margin: EdgeInsets.only(bottom: size.height*0.01),
                            decoration: BoxDecoration(border: Border.all(color: Colors.white38,width: 1),borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: size.height*0.02,
                                ),
                                SizedBox(
                                  width: size.width*0.755,
                                  height: size.height*0.55,
                                  child: Stack(
                                    children: [
                                      Positioned(

                                        child: AnimatedSwitcher(child: Visibility(
                                          child: SizedBox(
                                            width: size.width*0.25,
                                            height: size.height*0.50,
                                            child: Container(
                                              decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://api.rollax.torphin.com'+propic[index]),fit: BoxFit.cover),borderRadius: BorderRadius.circular(20)),
                                            ),
                                          ),
                                          visible: opc,
                                        ),duration: Duration(seconds: 10),),
                                        top: size.height*0.01,
                                        left: size.width*0.01,
                                      ),
                                      Positioned(child: AnimatedSwitcher(child: Visibility(
                                        child: SizedBox(
                                          width: size.width*0.20,
                                          child: Center(
                                            child: Column(
                                              children: [
                                                Directionality(textDirection: TextDirection.rtl,
                                                    child:Text((inddex==4)?direct2[0]:"protitle[index]",style: TextStyle(fontFamily:'sa',color: Colors.white,decoration: TextDecoration.none,fontSize: size.width*0.013),)

                                                ),
                                                Directionality(textDirection: TextDirection.rtl,
                                                    child: Text((inddex==4)?direct2[1]:prodes[index],style: TextStyle(fontFamily:'sa',color: Colors.white,decoration: TextDecoration.none,fontSize: size.width*0.015),)
                                                ),

                                                SizedBox(height: size.height*0.02,),
                                                Row(
                                                  children: [
                                                  ],
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                ),
                                                SizedBox(
                                                  height: size.width*0.005,
                                                ),
                                                Center(
                                                  child: GestureDetector(
                                                      onTap: (){
                                                        setState(() {
                                                          Number=index;
                                                          controller.forward();
                                                          opc=!opc;
                                                        });
                                                      },
                                                      child: Container(
                                                        width: size.width*0.09,
                                                        height: size.height*0.05,
                                                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                                                        child: Center(
                                                            child:Text("توضیحات بیشتر",style: TextStyle(fontFamily:'sa',color: Colors.black,decoration: TextDecoration.none,fontSize: size.width*0.008),)
                                                        ),
                                                      ),
                                                  ),
                                                ),
                                              ],
                                              mainAxisAlignment: MainAxisAlignment.center,
                                            ),
                                          ),
                                        ),
                                        visible: true,

                                      ),duration: Duration(seconds: 10),),
                                        top: size.height*0.12,
                                        right: size.width*0.04,),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: size.height*0.02,
                                ),

                              ],
                            ),
                          ),
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
                  ),
                  SizedBox(width: size.width*0.02,)
                ],
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
        'albumId': "$id",
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