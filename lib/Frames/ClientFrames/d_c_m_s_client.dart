import 'package:atlet/Frames/ClientFrames/chose_cond_client.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class MyDirectionClientMsFrame extends StatefulWidget {
  const MyDirectionClientMsFrame({super.key});

  @override
  State<MyDirectionClientMsFrame> createState() => _MyDirectionClientMsFrame();
}

class _MyDirectionClientMsFrame extends State<MyDirectionClientMsFrame> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return DefaultTabController(
      length: 1,
      child: Scaffold(
        body: Column(
          children: [
            Container(
                padding: EdgeInsets.only(top: 40),
                height: 100,
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              BoxIcons.bx_arrow_back,
                              color: Colors.black,
                              size: 30,
                            )),
                      ],
                    ),
                  ],
                )),
            TabBar(
              indicator: const UnderlineTabIndicator(
                borderSide: BorderSide(
                    width: 3.0, color: Color.fromRGBO(255, 198, 55, 1)),
              ),
              tabs: [
                Tab(
                  child: SizedBox(
                    width: size.width * 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Direccion",
                            style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                // <-- Your TabBarView
                children: [
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          height: size.height * 0.30,
                          padding: EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 8,
                                offset: Offset(0, 1),
                              ),
                            ],
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(BoxIcons.bx_map,
                                        color: Colors.green.shade400, size: 25),
                                    SizedBox(width: 10),
                                    Container(
                                      width: size.width * 0.65,
                                      child: TextField(
                                        cursorColor: Colors.black54,
                                        autocorrect: true,
                                        decoration: InputDecoration(
                                          border: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black)),
                                          hintText: "Lugar donde estoy",
                                          hintStyle: GoogleFonts.roboto(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(BoxIcons.bx_x_circle,
                                            color: Colors.red.shade400,
                                            size: 25))
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(BoxIcons.bx_dots_vertical_rounded)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(BoxIcons.bx_map,
                                        color: Colors.red.shade400, size: 25),
                                    SizedBox(width: 10),
                                    Container(
                                      width: size.width * 0.65,
                                      child: TextField(
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        cursorColor: Colors.black54,
                                        autocorrect: true,
                                        decoration: InputDecoration(
                                          border: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black)),
                                          hintText: "Lugar a donde voy",
                                          hintStyle: GoogleFonts.roboto(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(BoxIcons.bx_x_circle,
                                            color: Colors.green.shade400,
                                            size: 25))
                                  ],
                                )
                              ]),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 25),
              child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Color.fromRGBO(255, 198, 55, 1),
                      padding: EdgeInsets.all(15)),
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).push(
                          CupertinoPageRoute(builder: (BuildContext context) {
                        return const MyChoseCondClientFrame();
                      }));
                    });
                  },
                  child: Row(
                    children: [
                      Icon(BoxIcons.bxs_taxi, color: Colors.white60, size: 30),
                      Text(" Continuar",
                          style: GoogleFonts.roboto(
                              color: Colors.white, fontSize: 20))
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
