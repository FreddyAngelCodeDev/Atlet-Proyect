import 'dart:async';

import 'package:atlet/Frames/ClientFrames/direction_client.dart';
import 'package:atlet/Frames/ClientFrames/menu_client.dart';
import 'package:atlet/Frames/ClientFrames/menu_service_client.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:icons_plus/icons_plus.dart';

class MyMainClientFrame extends StatefulWidget {
  const MyMainClientFrame({super.key});

  @override
  State<MyMainClientFrame> createState() => _MyMainClientFrame();
}

class _MyMainClientFrame extends State<MyMainClientFrame> {
  static const CameraPosition _initialPosition = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      key: _scaffoldKey,
      drawer: const MyMenuClientFrame(),
      body: Stack(
        children: <Widget>[
          GoogleMap(
            mapType: MapType.normal,
            onMapCreated: _onMapCreated,
            initialCameraPosition: _initialPosition,
            myLocationEnabled: true,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
            child: Positioned(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(BoxIcons.bx_menu,
                        color: Colors.black, size: 35),
                    onPressed: () => _scaffoldKey.currentState?.openDrawer(),
                  ),
                  InkWell(
                    child: Container(
                      height: 50,
                      width: size.width * 0.80,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 5,
                              offset: Offset(1, 1),
                            ),
                          ]),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Icon(
                                  BoxIcons.bx_location_plus,
                                  color: Colors.black,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Elige el destino",
                                    style: GoogleFonts.roboto(
                                        color: Colors.black, fontSize: 18),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        Navigator.of(context).push(
                            CupertinoPageRoute(builder: (BuildContext context) {
                          return const MyDirectionClientFrame();
                        }));
                      });
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(0, 20, 57, 1),
        onPressed: () {
          setState(() {
            Navigator.of(context)
                .push(CupertinoPageRoute(builder: (BuildContext context) {
              return const MyMenuServiceClientFrame();
            }));
          });
        },
        child: Icon(
          BoxIcons.bx_plus,
          color: Colors.white,
        ),
      ),
    );
  }
}
