import 'package:atlet/Widgets/widget_menu_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class MyMenuServiceClientFrame extends StatefulWidget {
  const MyMenuServiceClientFrame({super.key});

  @override
  State<MyMenuServiceClientFrame> createState() => _MyMenuServiceClientFrame();
}

class _MyMenuServiceClientFrame extends State<MyMenuServiceClientFrame> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40),
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
                Text("Servicios",
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold))
              ],
            ),
            Container(
              height: size.height * 0.86,
              child: WidgetMenuServices(),
            )
          ],
        ),
      ),
    );
  }
}
