import 'package:atlet/Frames/CondFrames/Cliente_cond.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class MySolicitudClientFrame extends StatefulWidget {
  const MySolicitudClientFrame({super.key});

  @override
  State<MySolicitudClientFrame> createState() => _MySolicitudClientFrame();
}

class _MySolicitudClientFrame extends State<MySolicitudClientFrame> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
          padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
          height: size.height * 1,
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      BoxIcons.bx_arrow_back,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                  const Spacer(),
                  Text("Solicitud de Cliente",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                  const Spacer(),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        BoxIcons.bx_refresh,
                        color: Colors.black,
                        size: 30,
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: SizedBox(
                    height: size.height * 0.86,
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(0, 20, 57, 1),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    children: [
                                      CircleAvatar(maxRadius: 30),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: SizedBox(
                                          width: size.width * 0.40,
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Nombre Del Cliente",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  "Tipo de servicio",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                ),
                                                Text(
                                                  "Condiciones de Servicio",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.white,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                ),
                                              ]),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  Navigator.of(context)
                                                      .pushAndRemoveUntil(
                                                          CupertinoPageRoute(
                                                    builder:
                                                        (BuildContext context) {
                                                      return const MyClientFrame();
                                                    },
                                                  ),
                                                          (Route<dynamic>
                                                                  route) =>
                                                              false);
                                                });
                                              },
                                              icon: Icon(
                                                  BoxIcons.bx_check_circle,
                                                  color: Colors.green.shade400,
                                                  size: 25)),
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(BoxIcons.bx_x_circle,
                                                  color: Colors.red.shade400,
                                                  size: 25))
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    )),
              ),
            ],
          )),
    );
  }
}
