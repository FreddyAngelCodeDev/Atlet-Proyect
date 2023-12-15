import 'package:atlet/Frames/ClientFrames/main_client.dart';
import 'package:atlet/Frames/ClientFrames/signup_client.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class MyLoginClientFrame extends StatefulWidget {
  const MyLoginClientFrame({super.key});

  @override
  State<MyLoginClientFrame> createState() => _MyLoginClientFrame();
}

class _MyLoginClientFrame extends State<MyLoginClientFrame> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
          color: Color.fromRGBO(0, 20, 57, 1),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      height: size.height * 0.50,
      child: Padding(
        padding: EdgeInsets.only(top: 10, left: 5, right: 5),
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
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Text("Cliente",
                    style:
                        GoogleFonts.roboto(color: Colors.white, fontSize: 20))
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 5, right: 5),
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
                  Container(
                    width: size.width * 0.5,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: TextButton(
                      onPressed: () {
                        setState(
                          () {
                            Navigator.of(context).pushAndRemoveUntil(
                                CupertinoPageRoute(
                              builder: (BuildContext context) {
                                return const MyMainClientFrame();
                              },
                            ), (Route<dynamic> route) => false);
                          },
                        );
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
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "¿No tienes una cuenta?",
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.of(context).push(CupertinoPageRoute(
                                builder: (BuildContext context) {
                              return const MySignUpClientFrame();
                            }));
                          });
                        },
                        child: Text(
                          "Registrate",
                          style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                              padding: EdgeInsets.all(10)),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(BoxIcons.bxl_google,
                                  color: Colors.black, size: 20),
                              Text(" Acceder con Google ",
                                  style: GoogleFonts.roboto(
                                      color: Colors.black, fontSize: 10))
                            ],
                          )),
                      Text("  O  ",
                          style: GoogleFonts.roboto(
                              color: Colors.white, fontSize: 15)),
                      TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                            padding: EdgeInsets.all(10)),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(BoxIcons.bxl_facebook_circle,
                                color: Colors.blue, size: 20),
                            Text(" Acceder con Facebook",
                                style: GoogleFonts.roboto(
                                    color: Colors.black, fontSize: 10))
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
