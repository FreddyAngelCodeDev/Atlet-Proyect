import 'package:atlet/Frames/CondFrames/final_signup_cond.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class MySignUpCondFrame extends StatefulWidget {
  const MySignUpCondFrame({super.key});

  @override
  State<MySignUpCondFrame> createState() => _MySignUpCondFrame();
}

class _MySignUpCondFrame extends State<MySignUpCondFrame> {
  bool? _check = false;
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
                  Text("  Registro del Conductor",
                      style:
                          GoogleFonts.roboto(color: Colors.white, fontSize: 20))
                ],
              ),
            ),
            SizedBox(height: size.height * 0.02),
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
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.black54,
                      autocorrect: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: const Icon(BoxIcons.bx_user),
                        hintText: "Nombre",
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
                        prefixIcon: const Icon(BoxIcons.bx_user),
                        hintText: "Apellido",
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
                        prefixIcon: const Icon(BoxIcons.bx_user),
                        hintText: "Cedula",
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
                        hintText: "Telefono",
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
                        prefixIcon: const Icon(BoxIcons.bx_at),
                        hintText: "Email",
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
                      obscureText: true,
                      cursorColor: Colors.black54,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: const Icon(BoxIcons.bx_lock_alt),
                        hintText: "Contraseña",
                        hintStyle: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      //Text

                      Checkbox(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        value: _check,
                        onChanged: (bool? val) {
                          setState(() {
                            if (val!) {
                              _check = true;
                            } else {
                              _check = false;
                            }
                          });
                        },
                      ),

                      const Text(
                        'Estoy de acuerdo con las Politicas y Privacidad',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ],
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
                          Navigator.of(context).push(CupertinoPageRoute(
                              builder: (BuildContext context) {
                            return const MyFinalSignUpCondFrame();
                          }));
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
