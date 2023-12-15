import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class MyVueltoClient extends StatefulWidget {
  const MyVueltoClient({super.key});

  @override
  State<MyVueltoClient> createState() => _MyVueltoClient();
}

class _MyVueltoClient extends State<MyVueltoClient> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 36),
        height: size.height * 1,
        child: Column(
          children: [
            Container(
              height: size.height * 0.30,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(0, 20, 57, 1),
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
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          BoxIcons.bx_arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Saldo Disponible",
                        style: GoogleFonts.roboto(
                            color: Colors.white, fontSize: 25),
                      ),
                      Text(
                        "\$10.00",
                        style: GoogleFonts.roboto(
                            color: Colors.white, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Recarga tu Saldo",
                        style: GoogleFonts.roboto(
                            color: Colors.white, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor:
                                      Color.fromRGBO(255, 198, 55, 1),
                                ),
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(BoxIcons.bxl_paypal,
                                        color: Colors.white60, size: 20),
                                    Text(" Paypal",
                                        style: GoogleFonts.roboto(
                                            color: Colors.white, fontSize: 10))
                                  ],
                                )),
                            Text("  O  ",
                                style: GoogleFonts.roboto(
                                    color: Colors.white, fontSize: 10)),
                            TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor:
                                      Color.fromRGBO(255, 198, 55, 1),
                                ),
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(BoxIcons.bx_phone,
                                        color: Colors.white60, size: 20),
                                    Text(" Pago Movil",
                                        style: GoogleFonts.roboto(
                                            color: Colors.white, fontSize: 10))
                                  ],
                                ))
                          ]),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: SizedBox(
                  height: size.height * 0.642,
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
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      child: SizedBox(
                                        width: size.width * 0.50,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Nombre Del conductor",
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
                                    Text(
                                      "-\$10.60",
                                      style: GoogleFonts.roboto(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
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
        ),
      ),
    );
  }
}
