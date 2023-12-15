import 'package:atlet/Frames/CondFrames/main_cond.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class MyFinalSignUpCondFrame extends StatefulWidget {
  const MyFinalSignUpCondFrame({super.key});

  @override
  State<MyFinalSignUpCondFrame> createState() => _MyFinalSignUpCondFrame();
}

class _MyFinalSignUpCondFrame extends State<MyFinalSignUpCondFrame> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 20, 57, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 60),
              child: Row(
                children: [
                  Container(
                    height: 43,
                    width: 43,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        BoxIcons.bx_arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  Text("  Finalizacion del Registro",
                      style:
                          GoogleFonts.roboto(color: Colors.white, fontSize: 20))
                ],
              ),
            ),
            SizedBox(height: size.height * 0.30),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: TextField(
                      cursorColor: Colors.black54,
                      autocorrect: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: const Icon(BoxIcons.bx_user),
                        hintText: "Marca del vehiculo",
                        hintStyle: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.black54,
                      autocorrect: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: const Icon(BoxIcons.bx_phone),
                        hintText: "Modelo del vehiculo",
                        hintStyle: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    width: size.width * 0.5,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: TextButton(
                      autofocus: false,
                      onPressed: () {
                        setState(() {
                          Navigator.of(context).pushAndRemoveUntil(
                              CupertinoPageRoute(
                            builder: (BuildContext context) {
                              return const MyMainCondFrame();
                            },
                          ), (Route<dynamic> route) => false);
                        });
                      },
                      child: Text(
                        "Entrar",
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
