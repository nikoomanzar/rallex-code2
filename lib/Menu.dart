import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:site/MobileMenu.dart';
import 'package:site/datalink.dart';
class Menu extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MenuState();
  }

}
class MenuState extends State<Menu> with TickerProviderStateMixin{
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
    return (size.width<=size.height)?MobileMenu():Container(
      color:Colors.black,
          child: Center(
            child: Stack(
              children: [
                Positioned(
                    top: size.height*0.07,
                    left: size.width*0.05,
                    child: GestureDetector(
                      child: SizedBox(
                        width: size.width*0.025,
                        height: size.width*0.025,
                        child: Image(image: AssetImage("assets/images/back.png"),fit: BoxFit.cover,),
                      ),
                      onTap: (){
                        Navigator.pop(context);
                      },

                    )
                ),
                Positioned(
                    top: size.height*0.11,
                    left: size.width*0.43,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AnimatedBuilder(animation: controller3, builder: (BuildContext context,Widget? child){
                          return GestureDetector(
                            child: HoverCrossFadeWidget(
                                firstChild: Opacity(opacity: aniamtion3.value, child: GestureDetector(child: SizedBox(
                                  width: size.width*0.1,
                                  height: size.height*0.15,
                                  child: Image(image: AssetImage("assets/images/mn1.png"),),
                                ),onTap: (){setState(() {
                                  Navigator.pushNamed(context, "/product0");
                                });})),
                                secondChild: Opacity(opacity: aniamtion3.value, child: GestureDetector(child: SizedBox(
                                  width: size.width*0.1,
                                  height: size.height*0.12,
                                  child: Image(image: AssetImage("assets/images/mn1.png"),),
                                ),onTap: (){setState(() {
                                  Navigator.pushNamed(context, "/product0");
                                });},)),
                                duration: Duration(milliseconds: 300)),
                            onTap: (){
                              setState(() {
                                Navigator.pushNamed(context, "/product0");
                              });
                            },
                          );
                        }),
                        SizedBox(
                          height: size.height*0.02,
                        ),
                        AnimatedBuilder(animation: controller3, builder: (BuildContext context,Widget? child){
                          return HoverCrossFadeWidget(firstChild: Opacity(opacity: aniamtion3.value,child: GestureDetector(child: SizedBox(
                            width: size.width*0.1,
                            height: size.height*0.15,
                            child: Image(image: AssetImage("assets/images/mn2.png"),),
                          ),onTap: (){}),),
                              secondChild: Opacity(opacity: aniamtion3.value,child: GestureDetector(child: SizedBox(
                                width: size.width*0.1,
                                height: size.height*0.12,
                                child: Image(image: AssetImage("assets/images/mn2.png"),),
                              ),onTap: (){}),),
                              duration: Duration(milliseconds: 300));
                        }),
                        SizedBox(
                          height: size.height*0.00,
                        ),
                        AnimatedBuilder(animation: controller3, builder: (BuildContext context,Widget? child){
                          return HoverCrossFadeWidget(firstChild: Opacity(opacity: aniamtion3.value,child: GestureDetector(child: SizedBox(
                            width: size.width*0.1,
                            height: size.height*0.15,
                            child: Image(image: AssetImage("assets/images/mn3.png"),),
                          ),onTap: (){
                            Navigator.pushNamed(context, "/Agency");
                          },),),
                              secondChild: Opacity(opacity: aniamtion3.value,child: GestureDetector(child: SizedBox(
                                width: size.width*0.1,
                                height: size.height*0.12,
                                child: Image(image: AssetImage("assets/images/mn3.png"),),
                              ),onTap: (){
                                Navigator.pushNamed(context, "/Agency");
                              }),),
                              duration: Duration(milliseconds: 300));
                        }),
                        SizedBox(
                          height: size.height*0.04,
                        ),
                        AnimatedBuilder(animation: controller3, builder: (BuildContext context,Widget? child){
                          return HoverCrossFadeWidget(firstChild: Opacity(opacity: aniamtion3.value,child: GestureDetector(child: SizedBox(
                            width: size.width*0.1,
                            height: size.height*0.15,
                            child: Image(image: AssetImage("assets/images/mn4.png"),),
                          ),onTap: (){})),
                              secondChild: Opacity(opacity: aniamtion3.value,child: GestureDetector(child: SizedBox(
                                width: size.width*0.1,
                                height: size.height*0.12,
                                child: Image(image: AssetImage("assets/images/mn4.png"),),
                              ),onTap: (){})),
                              duration: Duration(milliseconds: 300));
                        }),
                        SizedBox(
                          height: size.height*0.03,
                        ),
                        GestureDetector(
                          child: AnimatedBuilder(animation: controller3, builder: (BuildContext context,Widget? child){
                            return HoverCrossFadeWidget(firstChild: Opacity(opacity: aniamtion3.value,child: GestureDetector(child: SizedBox(
                              width: size.width*0.1,
                              height: size.height*0.15,
                              child: Image(image: AssetImage("assets/images/mn5.png"),),
                            ),onTap: (){setState(() {
                              Navigator.pushNamed(context, "/contact");
                            });},)),
                                secondChild: Opacity(opacity: aniamtion3.value,child: GestureDetector(child: SizedBox(
                                  width: size.width*0.1,
                                  height: size.height*0.12,
                                  child: Image(image: AssetImage("assets/images/mn5.png"),),
                                ),onTap: (){setState(() {
                                  Navigator.pushNamed(context, "/contact");
                                });})),
                                duration: Duration(milliseconds: 500));
                          }),
                          onTap: (){
                            setState(() {
                              Navigator.pushNamed(context, "/contact");
                            });
                          },

                        ),
                        SizedBox(
                          height: size.height*0.05,
                        ),
                      ],
                    )),

              ],
            ),
          ),
    );
  }

}