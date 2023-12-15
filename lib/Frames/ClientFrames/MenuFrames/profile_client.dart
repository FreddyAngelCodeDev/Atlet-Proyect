import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class MyProfileClient extends StatefulWidget {
  const MyProfileClient({super.key});

  @override
  State<MyProfileClient> createState() => _MyProfileClient();
}

class _MyProfileClient extends State<MyProfileClient> {
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
                  Spacer(),
                  Text("Mi perfil",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                  Spacer(),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        BoxIcons.bx_pencil,
                        color: Colors.black,
                        size: 30,
                      )),
                ],
              ),
              SizedBox(height: 30),
              Column(
                children: [
                  CircleAvatar(
                    maxRadius: 80,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: size.width * 0.40,
                        child: TextField(
                          cursorColor: Colors.black54,
                          autocorrect: true,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            hintText: "Nombre",
                            hintStyle: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        width: size.width * 0.40,
                        child: TextField(
                          cursorColor: Colors.black54,
                          autocorrect: true,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            hintText: "Apellido",
                            hintStyle: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: size.width * 0.85,
                    child: TextField(
                      cursorColor: Colors.black54,
                      autocorrect: true,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: "Email",
                        hintStyle: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.85,
                    child: TextField(
                      cursorColor: Colors.black54,
                      autocorrect: true,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: "Telefono",
                        hintStyle: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
