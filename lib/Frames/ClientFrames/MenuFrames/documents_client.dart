import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class MyDocumentClient extends StatefulWidget {
  const MyDocumentClient({super.key});

  @override
  State<MyDocumentClient> createState() => _MyDocumentClient();
}

class _MyDocumentClient extends State<MyDocumentClient> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
          padding: EdgeInsets.only(top: 40),
          height: 100,
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
                ],
              ),
            ],
          )),
    );
  }
}
