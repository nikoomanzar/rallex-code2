import 'package:flutter/material.dart';
String photoaddress="";
void phottto(String address){
  photoaddress=address;
}
class photo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
      color: Colors.black,
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
              GestureDetector(
                  child: SizedBox(
                    width: size.width*0.02,
                    height: size.width*0.02,
                    child: Image(image: AssetImage("assets/images/back.png"),),
                  ),
                  onTap: (){
                    Navigator.pop(context);
                  },

              )
            ],
          ),
          SizedBox(
            height: size.height*0.05,
          ),
          SizedBox(
            width: size.width*0.5,
            height: size.width*0.4,
            child: Image(image: NetworkImage('https://'+photoaddress),fit: BoxFit.cover,),
          )
        ],
      ),
    );
  }

}