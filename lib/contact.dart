import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:latlng/latlng.dart';
import 'package:map/map.dart';
import 'package:site/MobileContact.dart';
import 'package:url_launcher/url_launcher.dart';
class contact extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return contactstate ();

  }
}
class contactstate extends State<contact>{
  final controller = MapController(
    location: LatLng(35.77959, 51.41523),
  );

  bool _darkMode = false;

  final markers = [
    LatLng(35.77959, 51.41523),
  ];

  void _gotoDefault() {
    controller.center = LatLng(35.77959, 51.41523);
    setState(() {});
  }

  void _onDoubleTap() {
    controller.zoom += 0.5;
    setState(() {});
  }

  Offset? _dragStart;
  double _scaleStart = 1.0;
  void _onScaleStart(ScaleStartDetails details) {
    _dragStart = details.focalPoint;
    _scaleStart = 1.0;
  }

  void _onScaleUpdate(ScaleUpdateDetails details) {
    final scaleDiff = details.scale - _scaleStart;
    _scaleStart = details.scale;

    if (scaleDiff > 0) {
      controller.zoom += 0.02;
      setState(() {});
    } else if (scaleDiff < 0) {
      controller.zoom -= 0.02;
      setState(() {});
    } else {
      final now = details.focalPoint;
      final diff = now - _dragStart!;
      _dragStart = now;
      controller.drag(diff.dx, diff.dy);
      setState(() {});
    }
  }

  Widget _buildMarkerWidget(Offset pos, Color color) {
    return Positioned(
      left: pos.dx - 16,
      top: pos.dy - 16,
      width: 24,
      height: 24,
      child: Icon(Icons.location_on, color: color,size: 56,),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _platform = Theme.of(context).platform;
    var size=MediaQuery.of(context).size;
    // TODO: implement build
     return (size.width<=size.height)?MobileContact():Container(
       width: size.width,
       height: size.height,
       decoration: BoxDecoration( image:DecorationImage(image:AssetImage("assets/images/Web.jpg"),fit: BoxFit.cover)),
        child: GestureDetector(
          child: Stack(
            children: [
              Positioned(
                top: size.height*0.05,

                child: SizedBox(
                  width: size.width,
                  height: size.height*0.55,
                  child: MapLayoutBuilder(
                    controller: controller,
                    builder: (context, transformer) {
                      final markerPositions =
                      markers.map(transformer.fromLatLngToXYCoords).toList();

                      final markerWidgets = markerPositions.map(
                            (pos) => _buildMarkerWidget(pos, Colors.red),
                      );

                      final homeLocation =
                      transformer.fromLatLngToXYCoords(LatLng(35.68, 51.412));

                      final homeMarkerWidget =
                      _buildMarkerWidget(homeLocation, Colors.black);

                      final centerLocation = Offset(
                          transformer.constraints.biggest.width / 2,
                          transformer.constraints.biggest.height / 2);

                      final centerMarkerWidget =
                      _buildMarkerWidget(centerLocation, Colors.purple);

                      return GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onDoubleTap: _onDoubleTap,
                        onScaleStart: _onScaleStart,
                        onScaleUpdate: _onScaleUpdate,
                        onTapUp: (details) {
                          final location =
                          transformer.fromXYCoordsToLatLng(details.localPosition);

                          final clicked = transformer.fromLatLngToXYCoords(location);

                          print('${location.longitude}, ${location.latitude}');
                          print('${clicked.dx}, ${clicked.dy}');
                          print('${details.localPosition.dx}, ${details.localPosition.dy}');
                        },
                        child: Listener(
                          behavior: HitTestBehavior.opaque,
                          onPointerSignal: (event) {
                            if (event is PointerScrollEvent) {
                              final delta = event.scrollDelta;

                              controller.zoom -= delta.dy / 1000.0;
                              setState(() {});
                            }
                          },
                          child: Stack(
                            children: [
                              Map(
                                controller: controller,
                                builder: (context, x, y, z) {
                                  //Legal notice: This url is only used for demo and educational purposes. You need a license key for production use.

                                  //Google Maps
                                  final url =
                                      'https://www.google.com/maps/vt/pb=!1m4!1m3!1i$z!2i$x!3i$y!2m3!1e0!2sm!3i420120488!3m7!2sen!5e1105!12m4!1e68!2m2!1sset!2sRoadmap!4e0!5m1!1e0!23i4111425';

                                  final darkUrl =
                                      'https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i$z!2i$x!3i$y!4i256!2m3!1e0!2sm!3i556279080!3m17!2sen-US!3sUS!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcC52Om9uLHMuZTpsfHAudjpvZmZ8cC5zOi0xMDAscy5lOmwudC5mfHAuczozNnxwLmM6I2ZmMDAwMDAwfHAubDo0MHxwLnY6b2ZmLHMuZTpsLnQuc3xwLnY6b2ZmfHAuYzojZmYwMDAwMDB8cC5sOjE2LHMuZTpsLml8cC52Om9mZixzLnQ6MXxzLmU6Zy5mfHAuYzojZmYwMDAwMDB8cC5sOjIwLHMudDoxfHMuZTpnLnN8cC5jOiNmZjAwMDAwMHxwLmw6MTd8cC53OjEuMixzLnQ6NXxzLmU6Z3xwLmM6I2ZmMDAwMDAwfHAubDoyMCxzLnQ6NXxzLmU6Zy5mfHAuYzojZmY0ZDYwNTkscy50OjV8cy5lOmcuc3xwLmM6I2ZmNGQ2MDU5LHMudDo4MnxzLmU6Zy5mfHAuYzojZmY0ZDYwNTkscy50OjJ8cy5lOmd8cC5sOjIxLHMudDoyfHMuZTpnLmZ8cC5jOiNmZjRkNjA1OSxzLnQ6MnxzLmU6Zy5zfHAuYzojZmY0ZDYwNTkscy50OjN8cy5lOmd8cC52Om9ufHAuYzojZmY3ZjhkODkscy50OjN8cy5lOmcuZnxwLmM6I2ZmN2Y4ZDg5LHMudDo0OXxzLmU6Zy5mfHAuYzojZmY3ZjhkODl8cC5sOjE3LHMudDo0OXxzLmU6Zy5zfHAuYzojZmY3ZjhkODl8cC5sOjI5fHAudzowLjIscy50OjUwfHMuZTpnfHAuYzojZmYwMDAwMDB8cC5sOjE4LHMudDo1MHxzLmU6Zy5mfHAuYzojZmY3ZjhkODkscy50OjUwfHMuZTpnLnN8cC5jOiNmZjdmOGQ4OSxzLnQ6NTF8cy5lOmd8cC5jOiNmZjAwMDAwMHxwLmw6MTYscy50OjUxfHMuZTpnLmZ8cC5jOiNmZjdmOGQ4OSxzLnQ6NTF8cy5lOmcuc3xwLmM6I2ZmN2Y4ZDg5LHMudDo0fHMuZTpnfHAuYzojZmYwMDAwMDB8cC5sOjE5LHMudDo2fHAuYzojZmYyYjM2Mzh8cC52Om9uLHMudDo2fHMuZTpnfHAuYzojZmYyYjM2Mzh8cC5sOjE3LHMudDo2fHMuZTpnLmZ8cC5jOiNmZjI0MjgyYixzLnQ6NnxzLmU6Zy5zfHAuYzojZmYyNDI4MmIscy50OjZ8cy5lOmx8cC52Om9mZixzLnQ6NnxzLmU6bC50fHAudjpvZmYscy50OjZ8cy5lOmwudC5mfHAudjpvZmYscy50OjZ8cy5lOmwudC5zfHAudjpvZmYscy50OjZ8cy5lOmwuaXxwLnY6b2Zm!4e0&key=AIzaSyAOqYYyBbtXQEtcHG7hwAwyCPQSYidG8yU&token=31440';
                                  //Mapbox Streets
                                  // final url =
                                  //     'https://api.mapbox.com/styles/v1/mapbox/streets-v11/tiles/$z/$x/$y?access_token=YOUR_MAPBOX_ACCESS_TOKEN';

                                  return CachedNetworkImage(
                                    imageUrl: _darkMode ? darkUrl : url,
                                    fit: BoxFit.cover,
                                  );
                                },
                              ),
                              homeMarkerWidget,
                              ...markerWidgets,
                              centerMarkerWidget,
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Positioned(
                  top: size.height*0.06,
                  left: size.width*0.05,
                  child: SizedBox(
                    width: size.width*0.036,
                    height: size.width*0.036,
                    child: GestureDetector(
                      child: Image(image: AssetImage("assets/images/bback.png"),fit: BoxFit.cover,),
                      onTap: (){
                        Navigator.pop(context);
                      },
                    ),
                  )
              ),
              Positioned(
                top: size.height*0.60,
                left: size.width*0.05,
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height*0.07,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: size.width*0.0175,
                        ),
                        Text("CONTACT US",style: TextStyle(fontSize: 26,color: Colors.white70,decoration: TextDecoration.none),)

                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                top: size.height*0.0,
                right: size.width*0.165,

                child:SizedBox(
                  width: size.width*0.22,
                  height: size.height*0.77,
                  child:Container(
                    decoration: BoxDecoration(image: DecorationImage(image:AssetImage("assets/images/1.png"),fit:BoxFit.cover),borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30)),
                    ),
                    child: Text(""),
                  ),
                ),),
              Positioned(
                  top: size.height*0.8280,
                  left: size.width*0.758,
                  child: SizedBox(
                    width: size.width*0.0285,
                    height: size.width*0.0285,
                    child: GestureDetector(
                      child: Image(image: AssetImage("assets/images/whatssup.png"),),
                      onTap: () async {
                        String Url="https://api.whatsapp.com/send?phone=989120898229";
                        var urllauncher = await canLaunch(Url);
                        if(urllauncher){
                          await launch(Url);
                        }
                      },
                    ),
                  )),
              Positioned(
                  top: size.height*0.828,
                  left: size.width*0.795,
                  child: SizedBox(
                    width: size.width*0.03,
                    height: size.width*0.03,
                    child: GestureDetector(
                      child: Image(image: AssetImage("assets/images/insta.png"),),
                      onTap: () async {
                        String Url="https://www.instagram.com/rallex.artsky/?hl=en";
                        var urllauncher = await canLaunch(Url);
                        if(urllauncher){
                          await launch(Url);
                        }
                      },
                    ),
                  )),
              Positioned(
                  top: size.height*0.832,
                  left: size.width*0.72,
                  child: SizedBox(
                    width: size.width*0.024,
                    height: size.width*0.024,
                    child: GestureDetector(
                      child: Image(image: AssetImage("assets/images/phone.png"),),
                      onTap: (){
                        final number = '021220356';
                        setState(() async {
                          String Url="www.linkedin.com/in/rallex-company";
                          var urllauncher = await canLaunch(Url);
                          if(urllauncher){
                            await launch(Url);
                          }
                        });
                      },
                    ),
                  )),
              Positioned(
                  top: size.height*0.826,
                  left: size.width*0.68,
                  child: GestureDetector(
                    child: SizedBox(
                      width: size.width*0.028,
                      height: size.width*0.028,
                      child: Image(image: AssetImage("assets/images/facebook.png"),),
                    ),
                    onTap: () async {
                      String Url="https://www.pinterest.co/rallexCompany";
                      var urllauncher = await canLaunch(Url);
                      if(urllauncher){
                        await launch(Url);
                      }
                    },

                  )),
              Positioned(
                  top: size.height*0.8238,
                  left: size.width*0.637,
                  child: SizedBox(
                    width: size.width*0.031,
                    height: size.width*0.031,
                    child: GestureDetector(
                      child: Image(image: AssetImage("assets/images/youtube.png"),),
                      onTap: () async {
                        String Url="https://www.youtube.com/channel/UCVb1TnlT0cGwEi8lba-SWCw";
                        var urllauncher = await canLaunch(Url);
                        if(urllauncher){
                          await launch(Url);
                        }
                      },

                    ),
                  )),
              ///////////////map
              Positioned(
                  top: size.height*0.75,
                  left: size.width*0.07,
                  child: SizedBox(
                    width: size.width*0.40,
                    height: size.width*0.10,
                    child: Image(image: AssetImage("assets/images/address.png"),),
                  )),
              Positioned(
                top: size.height*0.50,
                right: size.width*0.03,
                child: GestureDetector(
                  child: Icon(Icons.assistant_navigation,color: Colors.black,size: size.width*0.04,),
                  onTap: ()async {
                    String Url="https://maps.app.goo.gl/Ei6xmDkwmPjop6dP6";
                    var urllauncher = await canLaunch(Url);
                    if(urllauncher){
                      await launch(Url);
                    }
                  },
                ),
              )
            ],
          ) ,
        ),
     );

  }

}