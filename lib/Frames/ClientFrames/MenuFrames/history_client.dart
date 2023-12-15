import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class MyHistoryClient extends StatefulWidget {
  const MyHistoryClient({super.key});

  @override
  State<MyHistoryClient> createState() => _MyHistoryClient();
}

class _MyHistoryClient extends State<MyHistoryClient> {
  var _dateDesde;
  var _dateHasta;
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
                  Text("Historial",
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
              const SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: size.width * 0.75,
                          height: 60,
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(100, 101, 109, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime(
                                              DateTime.now().year - 100),
                                          lastDate:
                                              DateTime(DateTime.now().year + 1))
                                      .then((date) {
                                    setState(() {
                                      _dateDesde =
                                          '${date?.day.toString()}/${date?.month.toString()}/${date?.year.toString()}';
                                    });
                                  });
                                },
                                child: Row(children: [
                                  const Icon(
                                    BoxIcons.bx_calendar,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                      _dateDesde == null
                                          ? 'Desde'
                                          : '$_dateDesde',
                                      style: GoogleFonts.roboto(
                                          color: Colors.white, fontSize: 15)),
                                ]),
                              ),
                              const SizedBox(width: 10),
                              InkWell(
                                onTap: () {
                                  showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime(
                                              DateTime.now().year - 100),
                                          lastDate:
                                              DateTime(DateTime.now().year + 1))
                                      .then((date) {
                                    setState(() {
                                      _dateHasta =
                                          '${date?.day.toString()}/${date?.month.toString()}/${date?.year.toString()}';
                                    });
                                  });
                                },
                                child: Row(children: [
                                  const Icon(
                                    BoxIcons.bx_calendar,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                      _dateHasta == null
                                          ? 'Hasta'
                                          : '$_dateHasta',
                                      style: GoogleFonts.roboto(
                                          color: Colors.white, fontSize: 15)),
                                ]),
                              ),
                            ],
                          )),
                      const SizedBox(width: 10),
                      Container(
                          width: size.width * 0.15,
                          height: 60,
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(255, 198, 55, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: IconButton(
                            icon: const Icon(
                              BoxIcons.bx_search,
                              color: Colors.white,
                              size: 30,
                            ),
                            onPressed: () {},
                          )),
                    ],
                  ),
                ],
              )
            ],
          )),
    );
  }
}
