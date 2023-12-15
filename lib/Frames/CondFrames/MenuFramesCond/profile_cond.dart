import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class MyProfileCond extends StatefulWidget {
  const MyProfileCond({super.key});

  @override
  State<MyProfileCond> createState() => _MyProfileCond();
}

class _MyProfileCond extends State<MyProfileCond> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
          padding: EdgeInsets.only(top: 40, left: 10, right: 10),
          height: size.height * 1,
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
                    ),
                  ),
                  SizedBox(width: size.width * 0.20),
                  Text("Mi perfil",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          maxRadius: 50,
                          backgroundImage: AssetImage('assets/profile.png'),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("ID: 00000",
                                style: GoogleFonts.roboto(
                                    color: Colors.black, fontSize: 15)),
                            Text("Calificacion: 0",
                                style: GoogleFonts.roboto(
                                    color: Colors.black, fontSize: 15))
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Andres G Campos R",
                            style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 5),
                        Text("+58 412-000-00-00",
                            style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 5),
                        Text("andresgcr@gmail.com",
                            style: GoogleFonts.roboto(
                                color: Colors.black, fontSize: 15)),
                        SizedBox(height: 5),
                        Text("Banco Obrero",
                            style: GoogleFonts.roboto(
                                color: Colors.black, fontSize: 15)),
                        SizedBox(height: 5),
                        Container(
                          width: 125,
                          child: TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor:
                                      Color.fromRGBO(255, 198, 55, 1),
                                  padding: EdgeInsets.all(10)),
                              onPressed: () {
                                setState(() {});
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(BoxIcons.bxs_pencil,
                                      color: Colors.white60, size: 20),
                                  Text(" Editar Perfil",
                                      style: GoogleFonts.roboto(
                                          color: Colors.white, fontSize: 15))
                                ],
                              )),
                        )
                      ],
                    ),
                    SizedBox(height: size.height * 0.40),
                    TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Color.fromRGBO(255, 198, 55, 1),
                            padding: EdgeInsets.all(15)),
                        onPressed: () {
                          setState(() {});
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(" Historial de Cuenta",
                                style: GoogleFonts.roboto(
                                    color: Colors.white, fontSize: 20))
                          ],
                        )),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
