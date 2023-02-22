import 'package:flutter/material.dart';
import 'package:site/MobilePicture.dart';
import 'package:site/datalink.dart';
import 'package:site/photo.dart';
import 'package:site/product.dart';
import 'package:url_launcher/url_launcher.dart';
List p2 =['https://rallex.co/tpm/1.jpg','https://rallex.co/tpm/2.jpg','https://rallex.co/tpm/3.jpg','https://rallex.co/tpm/4.jpg',
  'https://rallex.co/tpm/5.jpg','https://rallex.co/tpm/6.jpg','https://rallex.co/tpm/7.jpg','https://rallex.co/tpm/8.jpg',
  'https://rallex.co/tpm/9.jpg','https://rallex.co/tpm/10.jpg'
];
class Pictures extends StatelessWidget{
  PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final _platform = Theme.of(context).platform;
    return (size.height>=size.width)?MobilePicture():Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
                    child: Text(pictitle,style: TextStyle(color: Colors.white,decoration: TextDecoration.none,fontFamily: 'sa',fontSize: size.width*0.01),),
                  )
                ],
              ),),
              Padding(
                padding: EdgeInsets.only(right: size.width*0.05),
                child: SizedBox(
                    width: size.width*0.16,
                    height: size.height*0.21,
                    child: GestureDetector(
                      child: Image(image: AssetImage("assets/images/logo.png")),
                      onTap: (){
                        Navigator.pushNamed(context, "/Home");
                      },
                    )
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
                  // FlatButton(
                  //   onPressed: (){
                  //     final number = '021220356';
                  //     setState(()  async {
                  //       if(_platform == TargetPlatform.android){
                  //         launch('tel://$number');
                  //       }else if (_platform == TargetPlatform.iOS){
                  //         launch('tel://$number');
                  //       }else{
                  //         Navigator.pushNamed(context, "/contact");
                  //       }
                  //     });
                  //   },
                  //   child: SizedBox(
                  //     width: size.width*0.025,
                  //     height: size.width*0.025,
                  //     child: Image(image: AssetImage("assets/images/Cbutton.png"),),
                  //   ),
                  //   mouseCursor: SystemMouseCursors.click,
                  // ),
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
            height: size.height*0.06,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(top:size.height*0.0,left: size.width*0.05),child: GestureDetector(
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
                  Padding(padding: EdgeInsets.only(top:size.height*0.0,left: size.width*0.05),child: GestureDetector(
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
              SizedBox(
                width: size.width*0.6,
                height: size.height*0.65,
                child: GridView.builder(
                    controller: _pageController,
                    itemCount: p4.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    itemBuilder:
                        (BuildContext context,int index){
                      return GestureDetector(onTap: (){
                        phottto((decselect==4)?p5[index]:p4[index]);
                        Navigator.pushNamed(context, "/Photo");
                      }, child: Container(
                        margin: EdgeInsets.only(bottom: size.height*0.009,right: size.width*0.01),
                        width: size.width*0.2,
                        height: size.height*0.25,
                        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage((decselect==4)?'https://'+p5[index]:'https://'+p4[index]),fit: BoxFit.cover),borderRadius: BorderRadius.all(Radius.circular(15))),
                      ));
                    }
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(top:size.height*0.0,right: size.width*0.05),child: GestureDetector(
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
                  Padding(padding: EdgeInsets.only(top:size.height*0.0,right: size.width*0.05),child: GestureDetector(
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
              )
            ],
          )

        ],
      ),
    );
  }

}