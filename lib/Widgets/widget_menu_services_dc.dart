import 'package:atlet/Frames/ClientFrames/chose_cond_client.dart';
import 'package:atlet/Frames/ClientFrames/direction_client.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetMenuServicesDc extends StatefulWidget {
  const WidgetMenuServicesDc({super.key});

  @override
  State<WidgetMenuServicesDc> createState() => _WidgetMenuServicesDc();
}

class _WidgetMenuServicesDc extends State<WidgetMenuServicesDc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.all(10),
      children: [
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Servicio \"Hermes\""),
                  content: Text("Precio: \$1.25"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Cancelar")),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.of(context).push(CupertinoPageRoute(
                                builder: (BuildContext context) {
                              return const MyChoseCondClientFrame();
                            }));
                          });
                        },
                        child: Text("Aceptar")),
                  ],
                );
              },
            );
          },
          child: Container(
            padding: EdgeInsets.all(10),
            height: 150,
            width: 100,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(0, 20, 57, 1),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Column(children: [
              Icon(
                Icons.motorcycle,
                color: Colors.white,
                size: 70,
              ),
              Text(
                "Hermes",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 25),
              ),
              Text(
                "Moto / 1 Pasajero",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 15),
              ),
              Text(
                "0 Equipaje / No mascotas",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 10),
              )
            ]),
          ),
        ),
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Servicio \"Dioniso\""),
                  content: Text("Precio: \$2.70"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Cancelar")),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.of(context).push(CupertinoPageRoute(
                                builder: (BuildContext context) {
                              return const MyChoseCondClientFrame();
                            }));
                          });
                        },
                        child: Text("Aceptar")),
                  ],
                );
              },
            );
          },
          child: Container(
            padding: EdgeInsets.all(10),
            height: 150,
            width: 100,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(0, 20, 57, 1),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(children: [
              Icon(
                Icons.directions_car,
                color: Colors.white,
                size: 70,
              ),
              Text(
                "Dioniso",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 25),
              ),
              Text(
                "Auto / 2 Pasajero",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 15),
              ),
              Text(
                "1 Equipaje / No mascotas",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 10),
              )
            ]),
          ),
        ),
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Servicio \"Plutus\""),
                  content: Text("Precio: \$3.25"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Cancelar")),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.of(context).push(CupertinoPageRoute(
                                builder: (BuildContext context) {
                              return const MyChoseCondClientFrame();
                            }));
                          });
                        },
                        child: Text("Aceptar")),
                  ],
                );
              },
            );
          },
          child: Container(
            height: 150,
            width: 100,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(0, 20, 57, 1),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(children: [
              const Icon(
                Icons.directions_car,
                color: Colors.white,
                size: 80,
              ),
              Text(
                "Plutus",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 25),
              ),
              Text(
                "Auto / 3 Pasajeros",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 15),
              ),
              Text(
                "1 Equipaje / No mascotas",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 10),
              )
            ]),
          ),
        ),
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Servicio \"Ares\""),
                  content: Text("Precio: \$4"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Cancelar")),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.of(context).push(CupertinoPageRoute(
                                builder: (BuildContext context) {
                              return const MyChoseCondClientFrame();
                            }));
                          });
                        },
                        child: Text("Aceptar")),
                  ],
                );
              },
            );
          },
          child: Container(
            height: 150,
            width: 100,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(0, 20, 57, 1),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(children: [
              Icon(
                Icons.directions_car,
                color: Colors.white,
                size: 80,
              ),
              Text(
                "Ares",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 25),
              ),
              Text(
                "Auto / 4 Pasajero",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 15),
              ),
              Text(
                "3 Equipaje / No mascotas",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 10),
              )
            ]),
          ),
        ),
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Servicio \"Hercules\""),
                  content: Text("Precio: \$6"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Cancelar")),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.of(context).push(CupertinoPageRoute(
                                builder: (BuildContext context) {
                              return const MyChoseCondClientFrame();
                            }));
                          });
                        },
                        child: Text("Aceptar")),
                  ],
                );
              },
            );
          },
          child: Container(
            height: 150,
            width: 100,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(0, 20, 57, 1),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(children: [
              Icon(
                Icons.directions_car,
                color: Colors.white,
                size: 80,
              ),
              Text(
                "Hercules",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 25),
              ),
              Text(
                "Camioneta / 4 Pasajero",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 15),
              ),
              Text(
                "3 Equipaje / No mascotas",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 10),
              )
            ]),
          ),
        ),
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Servicio \"Artemisa\""),
                  content: Text("Precio: \$6"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Cancelar")),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.of(context).push(CupertinoPageRoute(
                                builder: (BuildContext context) {
                              return const MyChoseCondClientFrame();
                            }));
                          });
                        },
                        child: Text("Aceptar")),
                  ],
                );
              },
            );
          },
          child: Container(
            height: 150,
            width: 100,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(0, 20, 57, 1),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(children: [
              Icon(
                Icons.directions_car,
                color: Colors.white,
                size: 80,
              ),
              Text(
                "Artemisa",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 25),
              ),
              Text(
                "Auto / 3 Pasajero",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 15),
              ),
              Text(
                "1 Equipaje / Si mascotas",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 10),
              )
            ]),
          ),
        ),
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Servicio \"Apolo\""),
                  content: Text("Precio: \$7"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Cancelar")),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.of(context).push(CupertinoPageRoute(
                                builder: (BuildContext context) {
                              return const MyChoseCondClientFrame();
                            }));
                          });
                        },
                        child: Text("Aceptar")),
                  ],
                );
              },
            );
          },
          child: Container(
            height: 150,
            width: 100,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(0, 20, 57, 1),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(children: [
              Icon(
                Icons.directions_car,
                color: Colors.white,
                size: 80,
              ),
              Text(
                "Apolo",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 25),
              ),
              Text(
                "Pick Up / 3 Pasajero",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 15),
              ),
              Text(
                "4 Equipaje / No mascotas",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 10),
              )
            ]),
          ),
        ),
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Servicio \"Hestia\""),
                  content: Text("Precio: \$3.25"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Cancelar")),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.of(context).push(CupertinoPageRoute(
                                builder: (BuildContext context) {
                              return const MyChoseCondClientFrame();
                            }));
                          });
                        },
                        child: Text("Aceptar")),
                  ],
                );
              },
            );
          },
          child: Container(
            height: 150,
            width: 100,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(0, 20, 57, 1),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(children: [
              Icon(
                Icons.directions_car,
                color: Colors.white,
                size: 80,
              ),
              Text(
                "Hestia",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 25),
              ),
              Text(
                "Auto / 3 Pasajero",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 15),
              ),
              Text(
                "1 Equipaje / Chofer Femenino",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 10),
              )
            ]),
          ),
        ),
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Servicio \"Zeus\""),
                  content: Text("Precio: \$5"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Cancelar")),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.of(context).push(CupertinoPageRoute(
                                builder: (BuildContext context) {
                              return const MyChoseCondClientFrame();
                            }));
                          });
                        },
                        child: Text("Aceptar")),
                  ],
                );
              },
            );
          },
          child: Container(
            height: 150,
            width: 100,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(0, 20, 57, 1),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(children: [
              Icon(
                Icons.directions_car,
                color: Colors.white,
                size: 80,
              ),
              Text(
                "Zeus",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 25),
              ),
              Text(
                "Auto / 3 Pasajero",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 15),
              ),
              Text(
                "2 Equipaje / No mascotas",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 10),
              )
            ]),
          ),
        ),
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Servicio \"Hefesto\""),
                  content: Text("Precio: \$10"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Cancelar")),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.of(context).push(CupertinoPageRoute(
                                builder: (BuildContext context) {
                              return const MyChoseCondClientFrame();
                            }));
                          });
                        },
                        child: Text("Aceptar")),
                  ],
                );
              },
            );
          },
          child: Container(
            height: 150,
            width: 100,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(0, 20, 57, 1),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(children: [
              Icon(
                Icons.directions_car,
                color: Colors.white,
                size: 80,
              ),
              Text(
                "Hefesto",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 25),
              ),
              Text(
                "Camioneta / 4 Pasajero",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 15),
              ),
              Text(
                "2 Equipaje / Blindado",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 10),
              )
            ]),
          ),
        ),
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Servicio \"Hades\""),
                  content: Text("Precio: \$15"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Cancelar")),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.of(context).push(CupertinoPageRoute(
                                builder: (BuildContext context) {
                              return const MyChoseCondClientFrame();
                            }));
                          });
                        },
                        child: Text("Aceptar")),
                  ],
                );
              },
            );
          },
          child: Container(
            height: 150,
            width: 100,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(0, 20, 57, 1),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(children: [
              Icon(
                Icons.directions_car,
                color: Colors.white,
                size: 80,
              ),
              Text(
                "Hades",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 25),
              ),
              Text(
                "Van / 11 Pasajero",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 15),
              ),
              Text(
                "3 Equipaje / No mascotas",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 10),
              )
            ]),
          ),
        ),
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Servicio \"Atlas\""),
                  content: Text("Precio: \$15"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Cancelar")),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.of(context).push(CupertinoPageRoute(
                                builder: (BuildContext context) {
                              return const MyChoseCondClientFrame();
                            }));
                          });
                        },
                        child: Text("Aceptar")),
                  ],
                );
              },
            );
          },
          child: Container(
            height: 150,
            width: 100,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(0, 20, 57, 1),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(children: [
              Icon(
                Icons.directions_car,
                color: Colors.white,
                size: 80,
              ),
              Text(
                "Dioniso",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 25),
              ),
              Text(
                "Van carga / 1 Pasajero",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 15),
              ),
              Text(
                "6 Equipaje / No mascotas",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 10),
              )
            ]),
          ),
        )
      ],
    ));
  }
}
