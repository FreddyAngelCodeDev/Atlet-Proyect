import 'package:atlet/Frames/ClientFrames/main_client.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class MyClientReceiptFrame extends StatefulWidget {
  const MyClientReceiptFrame({super.key});

  @override
  State<MyClientReceiptFrame> createState() => _MyClientReceiptFrame();
}

class _MyClientReceiptFrame extends State<MyClientReceiptFrame> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
          color: Colors.white,
          padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
          height: size.height * 1,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Conductor",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(height: 20),
              CircleAvatar(
                maxRadius: 60,
              ),
              const SizedBox(height: 10),
              Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Sofia V Miranda G",
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 5),
                      Text("Marca y Modelo del Vehiculo",
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 5),
                      Text("Toyota - Corolla",
                          style: GoogleFonts.roboto(
                              color: Colors.black, fontSize: 15)),
                      SizedBox(height: 5),
                      Text("Martricula del Vehiculo",
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 5),
                      Text("A2BO99",
                          style: GoogleFonts.roboto(
                              color: Colors.black, fontSize: 15)),
                      SizedBox(height: 5),
                      Text("Direccion de Salida",
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 5),
                      Text("UEC - San Juan Bautista, Calle Miranda",
                          style: GoogleFonts.roboto(
                              color: Colors.black, fontSize: 15)),
                      SizedBox(height: 5),
                      Text("Direccion de Llegada",
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 5),
                      Text(
                          "Urbanización Antonio Miguel Martínez, Prol Avenida Bolivar",
                          style: GoogleFonts.roboto(
                              color: Colors.black, fontSize: 15)),
                      SizedBox(height: 5),
                      Text("Distancia desde salida a llegada",
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 5),
                      Text("1.96Km",
                          style: GoogleFonts.roboto(
                              color: Colors.black, fontSize: 15)),
                      SizedBox(height: 5),
                      Text("Precio del servicio",
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 5),
                      Text("\$1.25",
                          style: GoogleFonts.roboto(
                              color: Colors.black, fontSize: 15)),
                      SizedBox(height: 5),
                      Text("Costo Total del Servicio",
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 5),
                      Text("\$1.838",
                          style: GoogleFonts.roboto(
                              color: Colors.black, fontSize: 15)),
                      SizedBox(height: 5)
                    ],
                  )),
              SizedBox(height: size.height * 0.10),
              TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Color.fromRGBO(255, 198, 55, 1),
                      padding: EdgeInsets.all(15)),
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).push(
                          CupertinoPageRoute(builder: (BuildContext context) {
                        return const MyMainClientFrame();
                      }));
                    });
                  },
                  child: Row(
                    children: [
                      Icon(BoxIcons.bxs_taxi, color: Colors.white60, size: 30),
                      Text(" Pagar el servicio",
                          style: GoogleFonts.roboto(
                              color: Colors.white, fontSize: 20))
                    ],
                  )),
            ],
          )),
    );
  }
}
