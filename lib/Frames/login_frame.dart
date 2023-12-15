import 'package:atlet/Frames/ClientFrames/login_client.dart';
import 'package:atlet/Frames/CondFrames/login_cond.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class MyLoginFrame extends StatefulWidget {
  const MyLoginFrame({super.key});

  @override
  State<MyLoginFrame> createState() => _MyLoginFrame();
}

class _MyLoginFrame extends State<MyLoginFrame> {
  final scaffoldState = GlobalKey<ScaffoldState>();

  void _showSheetClient() {
    // Show BottomSheet here using the Scaffold state instead ot«f the Scaffold context
    scaffoldState.currentState?.showBottomSheet(
      (context) => const MyLoginClientFrame(),
    );
  }

  void _showSheetCondt() {
    // Show BottomSheet here using the Scaffold state instead ot«f the Scaffold context
    scaffoldState.currentState?.showBottomSheet(
      (context) => const MyLoginCondFrame(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      key: scaffoldState,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 115),
            child: Column(children: [
              SizedBox(
                  width: size.width * 0.70,
                  child: Column(
                    children: [
                      Image.asset('assets/LogoBgt.png'),
                    ],
                  )),
              SizedBox(
                  height: size.height * 0.15,
                  width: size.width * 1,
                  child: const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Column(children: [
                      Text("¡Ganando el oro en la ruta!",
                          style: TextStyle(
                              fontFamily: 'Gry',
                              fontSize: 25,
                              color: Colors.black)),
                    ]),
                  )),
            ]),
          ),
          SizedBox(
            height: size.height * 0.1,
          ),
          Container(
            height: size.height * 0.3197,
            width: size.width * 1,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(0, 20, 57, 1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Inicia una Nueva Ruta",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 25),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50, left: 10, right: 10),
                child: Row(children: [
                  TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color.fromRGBO(255, 198, 55, 1),
                          padding: EdgeInsets.all(15)),
                      onPressed: () {
                        _showSheetCondt();
                      },
                      child: Row(
                        children: [
                          Icon(BoxIcons.bxs_car,
                              color: Colors.white60, size: 30),
                          Text(" Conductor",
                              style: GoogleFonts.roboto(
                                  color: Colors.white, fontSize: 20))
                        ],
                      )),
                  Text("  O  ",
                      style: GoogleFonts.roboto(
                          color: Colors.white, fontSize: 25)),
                  TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color.fromRGBO(255, 198, 55, 1),
                          padding: EdgeInsets.all(15)),
                      onPressed: () {
                        _showSheetClient();
                      },
                      child: Row(
                        children: [
                          Icon(BoxIcons.bxs_user,
                              color: Colors.white60, size: 30),
                          Text(" Cliente",
                              style: GoogleFonts.roboto(
                                  color: Colors.white, fontSize: 20))
                        ],
                      ))
                ]),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
