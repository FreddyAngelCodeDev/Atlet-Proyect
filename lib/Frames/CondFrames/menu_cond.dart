import 'package:atlet/Frames/CondFrames/MenuFramesCond/history_cond.dart';
import 'package:atlet/Frames/CondFrames/MenuFramesCond/my_dain_cond.dart';
import 'package:atlet/Frames/CondFrames/MenuFramesCond/profile_cond.dart';
import 'package:atlet/Frames/login_frame.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class MyMenuCondFrame extends StatefulWidget {
  const MyMenuCondFrame({super.key});

  @override
  State<MyMenuCondFrame> createState() => _MyMenuCondFrame();
}

class _MyMenuCondFrame extends State<MyMenuCondFrame> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Drawer(
      width: size.width * 1,
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            margin: const EdgeInsets.all(0),
            padding: const EdgeInsets.all(0),
            child: Container(
              color: const Color.fromRGBO(0, 20, 57, 1),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    const CircleAvatar(maxRadius: 35),
                    const SizedBox(
                      width: 10,
                    ),
                    Text("Hola, Andy",
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w600)),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(BoxIcons.bx_x,
                          color: Colors.white, size: 35),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                InkWell(
                  child: SizedBox(
                      height: 50,
                      child: Row(
                        children: [
                          const Icon(BoxIcons.bx_user),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Mi Perfil",
                            style: GoogleFonts.roboto(
                                color: Colors.black, fontSize: 15),
                          )
                        ],
                      )),
                  onTap: () {
                    setState(() {
                      Navigator.of(context).push(
                          CupertinoPageRoute(builder: (BuildContext context) {
                        return MyProfileCond();
                      }));
                    });
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  child: SizedBox(
                    height: 50,
                    child: Row(
                      children: [
                        Icon(BoxIcons.bx_credit_card),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Mi Saldo",
                          style: GoogleFonts.roboto(
                              color: Colors.black, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      Navigator.of(context).push(
                          CupertinoPageRoute(builder: (BuildContext context) {
                        return MyGainCond();
                      }));
                    });
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  child: SizedBox(
                    height: 50,
                    child: Row(
                      children: [
                        Icon(BoxIcons.bx_history),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Historial",
                          style: GoogleFonts.roboto(
                              color: Colors.black, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      Navigator.of(context).push(
                          CupertinoPageRoute(builder: (BuildContext context) {
                        return MyHistoryCond();
                      }));
                    });
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  child: SizedBox(
                    height: 50,
                    child: Row(
                      children: [
                        Icon(BoxIcons.bx_file),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Documentos",
                          style: GoogleFonts.roboto(
                              color: Colors.black, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  child: SizedBox(
                    height: 50,
                    child: Row(
                      children: [
                        Icon(BoxIcons.bx_cog),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Ajustes",
                          style: GoogleFonts.roboto(
                              color: Colors.black, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  child: SizedBox(
                    height: 50,
                    child: Row(
                      children: [
                        Icon(
                          BoxIcons.bx_log_in,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Cerrar sesión",
                          style: GoogleFonts.roboto(
                              color: Colors.red, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    setState(
                      () {
                        Navigator.of(context).pushAndRemoveUntil(
                            CupertinoPageRoute(
                          builder: (BuildContext context) {
                            return MyLoginFrame();
                          },
                        ), (Route<dynamic> route) => false);
                      },
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
