import 'dart:async';

import 'package:atlet/Frames/CondFrames/Cliente_cond.dart';
import 'package:atlet/Frames/CondFrames/Solicitud_cliente_cond.dart';
import 'package:atlet/Frames/CondFrames/menu_cond.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyMainCondFrame extends StatefulWidget {
  const MyMainCondFrame({super.key});

  @override
  State<MyMainCondFrame> createState() => _MyMainCondFrame();
}

class _MyMainCondFrame extends State<MyMainCondFrame> {
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
    return Scaffold(
      key: _scaffoldKey,
      drawer: const MyMenuCondFrame(),
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
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color.fromRGBO(0, 20, 57, 1),
        onPressed: () {
          setState(() {
            Navigator.of(context)
                .push(CupertinoPageRoute(builder: (BuildContext context) {
              return MySolicitudClientFrame();
            }));
          });
        },
        icon: Icon(
          BoxIcons.bx_user,
          color: Colors.white,
        ),
        label: Text(
          "Clientes",
          style: GoogleFonts.roboto(color: Colors.white),
        ),
      ),
    );
  }
}
