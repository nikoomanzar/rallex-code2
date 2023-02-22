import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
class MobileMenu extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MobileMenuState();
  }

}
class MobileMenuState extends State<MobileMenu> with TickerProviderStateMixin{
  late Animation<double> aniamtion3;
  late AnimationController controller3;
  void initState() {
    super.initState();
    controller3 = new AnimationController(vsync: this,duration: Duration(seconds: 5));
    aniamtion3=Tween(begin: 0.0,end:1.0).animate(new CurvedAnimation(parent: controller3, curve:Curves.ease));
    controller3.forward();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller3.dispose();
  }
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
      color:Colors.black,
      child: Center(
        child: Stack(
          children: [
            Positioned(
                top: size.height*0.03,
                left: size.width*0.36,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AnimatedBuilder(animation: controller3, builder: (BuildContext context,Widget? child){
                      return GestureDetector(
                        child: HoverCrossFadeWidget(
                            firstChild: Opacity(opacity: aniamtion3.value, child: SizedBox(
                              width: size.width*0.3,
                              height: size.height*0.2,
                              child: Image(image: AssetImage("assets/images/mn1.png"),),
                            )),
                            secondChild: Opacity(opacity: aniamtion3.value, child: SizedBox(
                              width: size.width*0.3,
                              height: size.height*0.22,
                              child: Image(image: AssetImage("assets/images/mn1.png"),),
                            )),
                            duration: Duration(milliseconds: 300)),
                        onTap: (){
                          setState(() {
                            Navigator.pushNamed(context, "/product0");
                          });
                        },
                      );
                    }),

                    AnimatedBuilder(animation: controller3, builder: (BuildContext context,Widget? child){
                      return HoverCrossFadeWidget(firstChild: Opacity(opacity: aniamtion3.value,child: SizedBox(
                        width: size.width*0.28,
                        height: size.height*0.2,
                        child: Image(image: AssetImage("assets/images/mn2.png"),),
                      ),),
                          secondChild: Opacity(opacity: aniamtion3.value,child: SizedBox(
                            width: size.width*0.1,
                            height: size.height*0.12,
                            child: Image(image: AssetImage("assets/images/mn2.png"),),
                          ),),
                          duration: Duration(milliseconds: 300));
                    }),

                    AnimatedBuilder(animation: controller3, builder: (BuildContext context,Widget? child){
                      return HoverCrossFadeWidget(firstChild: Opacity(opacity: aniamtion3.value,child: SizedBox(
                        width: size.width*0.3,
                        height: size.height*0.2,
                        child: Image(image: AssetImage("assets/images/mn3.png"),),
                      ),),
                          secondChild: Opacity(opacity: aniamtion3.value,child: SizedBox(
                            width: size.width*0.1,
                            height: size.height*0.12,
                            child: Image(image: AssetImage("assets/images/mn3.png"),),
                          ),),
                          duration: Duration(milliseconds: 300));
                    }),

                    AnimatedBuilder(animation: controller3, builder: (BuildContext context,Widget? child){
                      return HoverCrossFadeWidget(firstChild: Opacity(opacity: aniamtion3.value,child: SizedBox(
                        width: size.width*0.34,
                        height: size.height*0.20,
                        child: Image(image: AssetImage("assets/images/mn4.png"),),
                      )),
                          secondChild: Opacity(opacity: aniamtion3.value,child: SizedBox(
                            width: size.width*0.1,
                            height: size.height*0.12,
                            child: Image(image: AssetImage("assets/images/mn4.png"),),
                          )),
                          duration: Duration(milliseconds: 300));
                    }),

                    GestureDetector(
                      child: AnimatedBuilder(animation: controller3, builder: (BuildContext context,Widget? child){
                        return HoverCrossFadeWidget(firstChild: Opacity(opacity: aniamtion3.value,child: SizedBox(
                          width: size.width*0.3,
                          height: size.height*0.2,
                          child: Image(image: AssetImage("assets/images/mn5.png"),),
                        )),
                            secondChild: Opacity(opacity: aniamtion3.value,child: SizedBox(
                              width: size.width*0.1,
                              height: size.height*0.12,
                              child: Image(image: AssetImage("assets/images/mn5.png"),),
                            )),
                            duration: Duration(milliseconds: 500));
                      }),
                      onTap: (){
                        setState(() {
                          Navigator.pushNamed(context, "/contact");
                        });
                      },
                    )
                  ],
                )),


          ],
        ),
      ),
    );
  }

}