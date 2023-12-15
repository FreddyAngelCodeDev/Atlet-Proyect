import 'package:atlet/Frames/ClientFrames/MenuFrames/config_client.dart';
import 'package:atlet/Frames/ClientFrames/MenuFrames/documents_client.dart';
import 'package:atlet/Frames/ClientFrames/MenuFrames/history_client.dart';
import 'package:atlet/Frames/ClientFrames/MenuFrames/profile_client.dart';
import 'package:atlet/Frames/ClientFrames/MenuFrames/vuelto_client.dart';
import 'package:atlet/Frames/login_frame.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class MyMenuClientFrame extends StatefulWidget {
  const MyMenuClientFrame({super.key});

  @override
  State<MyMenuClientFrame> createState() => _MyMenuClientFrame();
}

class _MyMenuClientFrame extends State<MyMenuClientFrame> {
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
                        return const MyProfileClient();
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
                        return const MyVueltoClient();
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
                        return const MyHistoryClient();
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
                    setState(() {
                      Navigator.of(context).push(
                          CupertinoPageRoute(builder: (BuildContext context) {
                        return const MyDocumentClient();
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
                    setState(() {
                      Navigator.of(context).push(
                          CupertinoPageRoute(builder: (BuildContext context) {
                        return const MyConfigClient();
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
                            return const MyLoginFrame();
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
