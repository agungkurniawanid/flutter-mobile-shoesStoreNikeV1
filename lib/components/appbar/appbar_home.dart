import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget appBarHome() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        const Image(
          image: AssetImage("assets/nike_icon_mark.png"),
          width: 80,
        ),
        Text(
          "NIKE",
          style: GoogleFonts.poppins(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontStyle: FontStyle.italic),
        )
      ],
    ),
  );
}
